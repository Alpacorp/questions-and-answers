const nameQuestion = document.getElementById('nameQuestion');
const questionsData = document.getElementById('questionsData');
const categoryQuestion = document.getElementById('categoryQuestion');
const dateQuestion = document.getElementById('dateQuestion');
const textQuestion = document.getElementById('textQuestion');
const content = document.getElementById('content');

const urlQuestions = 'http://localhost:7000/questions';
const urlQuestionsAnswers = 'http://localhost:7000/questions-answers';

document.addEventListener('DOMContentLoaded', async ()=>{
    
    // let res = await fetch(urlQuestions);
    let res = await fetch(urlQuestionsAnswers);
    let json = await res.json();

    for (let index = 0; index < json.data.length; index++) {
        const element = json.data[index];

        console.log(element);

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
        nameAnswer.innerHTML = `${element.name_a}`;
        let dataDateA = document.createElement('h4');
        dataDateA.className = 'data-date';
        dataDateA.innerHTML = '&nbspha respondido esto el&nbsp';
        let date = document.createElement('span');
        date.className = 'date';
        date.innerHTML = `${element.date_a}`;
        let answersAnswer = document.createElement('h3');
        answersAnswer.className = 'answers__answer';
        answersAnswer.innerHTML = `${element.answer}`;

        let mail = document.createElement('input');
        mail.setAttribute('type', 'email');
        mail.setAttribute('placeholder', 'Ingresa tu correo electrónico');
        mail.setAttribute('id', 'answer');

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
        content.appendChild(answers);
        content.appendChild(hr);

        console.log(questions);
        console.log(answers);
        console.log(content);
    }
});