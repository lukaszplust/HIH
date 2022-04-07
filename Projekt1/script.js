const btn = document.querySelector('.record'); 
const x = document.querySelector('span.hide');
const menu = document.querySelector('.modal-wrap');
const blur = document.querySelector('.article');


btn.addEventListener('click',function()
{
    menu.classList.add('active');
})

x.addEventListener('click',function()
                    {
    menu.classList.remove('active');
    blur.classList.remove('blur');
})

const autor = document.querySelector('.leftOn');
const h2Txt = document.querySelector('.AutorTxt')
const arrow = document.getElementById('ArrowLeft'); 

autor.addEventListener('click', function(){
        h2Txt.style.left = '50%';
        h2Txt.style.transition = '1s linear';
})

arrow.addEventListener('click', () =>{
    h2Txt.style.left = '-100%';
    h2Txt.style.transition = '1s linear';
})


const spnText = document.querySelector('article');

const txt = 'Od 8 lat interesuję się sportem. Odkąd zacząłem chodzić na siłownię zainteresowałem się trójbojem siłowym.W swoim planie treningowym ćwiczenia związane z trójbojem wygldały u mnie następująco przysiad ze sztangą 2 razy w tygodniu w poniedziałek i w czwartek. Wyciskanie sztangi leząc we wtorek i piątek.Martwy ciąg w środę.';

let indexText = 0;
const time = 40;

const addLetter = () => {
 spnText.textContent += txt[indexText];
 indexText++;
 if (indexText === txt.length) 
 clearInterval(indexTyping);
}


const indexTyping = setInterval(addLetter, time);


