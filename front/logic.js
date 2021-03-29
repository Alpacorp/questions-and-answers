const nameQuestion = document.getElementById('nameQuestion');
const questionsData = document.getElementById('questionsData');
const categoryQuestion = document.getElementById('categoryQuestion');
const dateQuestion = document.getElementById('dateQuestion');
const textQuestion = document.getElementById('textQuestion');
const content = document.getElementById('content');

// add question variables

const addQuestion = document.getElementById('addQuestion');
const email = document.getElementById('email');
const nameP = document.getElementById('name');
const category = document.getElementById('category');
const question = document.getElementById('question');

// add answer variables



// endpoints

const urlQuestions = 'http://localhost:7000/questions';
const urlQuestionsAnswers = 'http://localhost:7000/questions-answers';
const urlAddQuestion = 'http://localhost:7000/question';
const urlAddAnswer = 'http://localhost:7000/answer';
const urlprueba = 'http://localhost:7000/prueba';
const urlAnswerId = 'http://localhost:7000/answer/';

document.addEventListener('DOMContentLoaded', async ()=>{
    
    let res = await fetch(urlQuestions);
    // let res = await fetch(urlQuestionsAnswers);
    let json = await res.json();

    for (let index = 0; index < json.data.length; index++) {
        const element = json.data[index];

        const urlAnswer = urlAnswerId + `${element.id_q}`;

        console.log(urlAnswer);

        let resA = await fetch(urlAnswer);
        let jsonRes = await resA.json();

        let elementRes = jsonRes.data[0];

        console.log(element);

        if (elementRes) {
            elementRes = elementRes
            console.log(elementRes.id_q);
        }else{
            elementRes = "";
        }

        console.log(elementRes);

        let questions = document.createElement('div');
        questions.className = 'questions';

        let questionsData = document.createElement('div');
        questionsData.className = 'questions__data';
        questionsData.setAttribute('id', 'questionsData');
        let nameQuestion = document.createElement('h4');
        nameQuestion.className = 'data-name';
        nameQuestion.setAttribute('id', 'nameQuestion');
        nameQuestion.innerHTML = `${element.name_q}`;
        let categoryQuestion = document.createElement('h5');
        categoryQuestion.className = 'data-category';
        categoryQuestion.setAttribute('div', 'categoryQuestion');
        categoryQuestion.innerHTML = `${element.category}`;
        let dataDate = document.createElement('p');
        dataDate.className = 'data-date';
        dataDate.innerHTML = 'Fecha: ';
        let dateQuestion = document.createElement('span');
        dateQuestion.className = "date";
        dateQuestion.setAttribute('id', 'dateQuestion');
        dateQuestion.innerHTML = `${element.date_q}`;
        let textQuestion = document.createElement('h2');
        textQuestion.className = 'questions__question';
        textQuestion.setAttribute('id', 'textQuestion');
        textQuestion.innerHTML = `${element.question}`;

        let hr = document.createElement('hr');

        let answers = document.createElement('div');
        answers.className = 'answers';

        let answerData = document.createElement('div');
        answerData.className = 'answers__data';
        let nameAnswer = document.createElement('h4');
        nameAnswer.className = 'data-name';
        nameAnswer.setAttribute('id', 'nameAnswer');
        nameAnswer.innerHTML = `${elementRes.name_a}`;
        let dataDateA = document.createElement('h4');
        dataDateA.className = 'data-date';
        dataDateA.innerHTML = '&nbspha respondido esto el&nbsp';
        let date = document.createElement('span');
        date.className = 'date';
        date.innerHTML = `${elementRes.date_a}`;
        let answersAnswer = document.createElement('h3');
        answersAnswer.className = 'answers__answer';
        answersAnswer.innerHTML = `${elementRes.answer}`;

        let formA = document.createElement('div');
        formA.className = 'form__answers';

        let titleA = document.createElement('h4');
        titleA.className = 'title__answer';
        titleA.innerHTML = 'Deja tu respuesta y colabora con la comunidad';
        let form = document.createElement('form');
        form.setAttribute('id', 'addAnswer');
        let mailA = document.createElement('input');
        mailA.setAttribute('type', 'email');
        mailA.setAttribute('placeholder', 'Ingresa tu correo electrónico');
        mailA.setAttribute('id', 'mailA');
        let nameA = document.createElement('input');
        nameA.setAttribute('type', 'text');
        nameA.setAttribute('placeholder', 'Ingresa tu nombre completo');
        nameA.setAttribute('id', 'mameA');
        let answer = document.createElement('textarea');
        answer.setAttribute('id', 'answer');
        answer.setAttribute('cols', '20');
        answer.setAttribute('rows', '5');
        answer.setAttribute('placeholder', 'Escribe tu respuesta');
        let buttonA = document.createElement('button');
        buttonA.innerHTML = 'Enviar Respuesta';

        formA.appendChild(titleA);
        formA.appendChild(form);
        form.appendChild(mailA);
        form.appendChild(nameA);
        form.appendChild(answer);
        form.appendChild(buttonA);

        console.log(formA);

        // add html DOM

        questions.appendChild(questionsData);
        questionsData.appendChild(nameQuestion);
        questionsData.appendChild(categoryQuestion);
        questionsData.appendChild(dataDate);
        dataDate.appendChild(dateQuestion);
        questions.appendChild(textQuestion);

        answers.appendChild(answerData);
        answerData.appendChild(nameAnswer);
        answerData.appendChild(dataDateA);
        dataDateA.appendChild(date);
        answers.appendChild(answersAnswer);
        
        content.appendChild(questions);

        if(!elementRes.name_a || elementRes.name_a == null){
            content.appendChild(formA);
        }else{
            content.appendChild(answers);
        }

        content.appendChild(hr);

        buttonA.addEventListener('click', async (event)=>{
            event.preventDefault()

            // let res = await fetch(urlprueba);
            // let json = await res.json();

            let idQuestion = `${element.id_q}`

            console.log(idQuestion);
            console.log(nameA.value);

            let nameAVal = nameA.value
        
            try {
                let options = {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json; charset=utf-8'
                    },
                    body: JSON.stringify({
                        id_q: 111,
                        email: mailA.value,
                        name: nameAVal,
                        answer: "55 años de edad"
                    })
                }
                let res = await fetch(urlAddAnswer, options);
        
                if (res.ok) {
                    alert("Respuesta enviada correctamente");
                    location.reload();
                } else {
                    console.log("error al ingresar tu respuesta");
                };
        
            } catch (error) {
                console.log(error);
            }
            
        })
    }
});

addQuestion.addEventListener('submit', async (event)=>{
    event.preventDefault()

    try {
        let options = {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json; charset=utf-8'
            },
            body: JSON.stringify({
                email: email.value,
                name: nameP.value,
                question: question.value,
                category: category.value
            })
        }
        let res = await fetch(urlAddQuestion, options);

        if (res.ok) {
            alert("Pregunta enviada correctamente");
            location.reload();
        } else {
            console.log("error al ingresar los datos");
        };

    } catch (error) {
        console.log(error);
    }
    
})