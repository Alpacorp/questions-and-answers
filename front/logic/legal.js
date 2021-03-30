// div render DOM questions and answers

const content = document.getElementById('content');

// add question variables

const addQuestion = document.getElementById('addQuestion');
const email = document.getElementById('email');
const nameP = document.getElementById('name');
const category = document.getElementById('category');
const question = document.getElementById('question');
const lastQuestion = document.getElementById('lastQuestion');

// count variable

const tecnica = document.getElementById('tecnica');
const administrativa = document.getElementById('administrativa');
const legal = document.getElementById('legal');
const economica = document.getElementById('economica');
const todas = document.getElementById('todas');

// local endpoints

// const urlQuestions = 'http://localhost:7000/questions/';
// const urlAddQuestion = 'http://localhost:7000/question/';
// const urlAddAnswer = 'http://localhost:7000/answer/';
// const urlGetQCategories = 'http://localhost:7000/questions/category/';

// deploy endpoints

const urlQuestions = 'https://questions-and-answers-page.herokuapp.com/questions/';
const urlAddQuestion = 'https://questions-and-answers-page.herokuapp.com/question/';
const urlAddAnswer = 'https://questions-and-answers-page.herokuapp.com/answer/';
const urlGetQCategories = 'https://questions-and-answers-page.herokuapp.com/questions/category/';

document.addEventListener('DOMContentLoaded', async ()=>{

    let tec = urlGetQCategories + 'Técnica';
    let adm = urlGetQCategories + 'Administrativa';
    let leg = urlGetQCategories + 'Legal';
    let eco = urlGetQCategories + 'Económica';
    let tod = urlQuestions;

    let resTec = await fetch(tec);
    let resAdm = await fetch(adm);
    let resLeg = await fetch(leg);
    let resEco = await fetch(eco);
    let resTod = await fetch(tod);

    let jsonTec = await resTec.json();
    let jsonAdm = await resAdm.json();
    let jsonLeg = await resLeg.json();
    let jsonEco = await resEco.json();
    let jsonTod = await resTod.json();

    tecnica.innerHTML = `${jsonTec.data.length}`;
    legal.innerHTML = `${jsonLeg.data.length}`;
    administrativa.innerHTML = `${jsonAdm.data.length}`;
    economica.innerHTML = `${jsonEco.data.length}`;
    todas.innerHTML = `${jsonTod.data.length}`;
    
    let res = await fetch(urlQuestions + 'category/' + 'Legal');
    let json = await res.json();

    let finalQuestion = json.data[0].question;

    lastQuestion.innerHTML = `${finalQuestion}`;

    for (let index = 0; index < json.data.length; index++) {
        const element = json.data[index];

        const urlAnswer = urlAddAnswer + `${element.id_q}`;

        let resA = await fetch(urlAnswer);
        let jsonRes = await resA.json();

        let elementRes = jsonRes.data[0];

        if (elementRes) {
            elementRes = elementRes;
        }else{
            elementRes = "";
        }

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
        categoryQuestion.setAttribute('id', 'categoryQuestion');
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
        form.setAttribute('action', '')
        let mailA = document.createElement('input');
        mailA.setAttribute('type', 'email');
        mailA.setAttribute('placeholder', 'Ingresa tu correo electrónico');
        mailA.setAttribute('id', 'mailA');
        mailA.setAttribute('required', '');
        let nameA = document.createElement('input');
        nameA.setAttribute('type', 'text');
        nameA.setAttribute('placeholder', 'Ingresa tu nombre completo');
        nameA.setAttribute('id', 'mameA');
        nameA.setAttribute('required', '');
        let answer = document.createElement('textarea');
        answer.setAttribute('id', 'answer');
        answer.setAttribute('cols', '20');
        answer.setAttribute('rows', '5');
        answer.setAttribute('placeholder', 'Escribe tu respuesta');
        answer.setAttribute('required', '');
        let buttonA = document.createElement('button');
        buttonA.innerHTML = 'Enviar Respuesta';

        formA.appendChild(titleA);
        formA.appendChild(form);
        form.appendChild(mailA);
        form.appendChild(nameA);
        form.appendChild(answer);
        form.appendChild(buttonA);

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

        switch (categoryQuestion.innerHTML) {
            case 'Técnica':
                categoryQuestion.className = 'yellow';
                break;
            case 'Económica':
                categoryQuestion.className = 'red';
                break;
            case 'Administrativa':
                categoryQuestion.className = 'green';
                break;
            case 'Legal':
                categoryQuestion.className = 'purple';
                break;
            default:
                break;
        }

        content.appendChild(hr);

        buttonA.addEventListener('click', async (event)=>{
            event.preventDefault()

            let idQuestion = `${element.id_q}`

            let nameAVal = nameA.value
        
            try {
                let options = {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json; charset=utf-8'
                    },
                    body: JSON.stringify({
                        id_q: idQuestion,
                        email: mailA.value,
                        name: nameAVal,
                        answer: answer.value
                    })
                }
        
                if (mailA.value === '' || nameAVal === '' || answer.value === '') {
                    alert("Información incompleta, no fue posible enviar respuesta");
                }
                    else if (mailA.value === `${element.email_q}`) {
                        alert("No puedes responder la misma pregunta que creaste estimado usuario " + `${element.email_q}`);
                    }
                else {
                    alert("Respuesta enviada correctamente");
                    let res = await fetch(urlAddAnswer, options);
                    location.reload();
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
            alert("Pregunta no pudo ser enviada");
        };

    } catch (error) {
        console.log(error);
    }
    
})