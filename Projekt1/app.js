const slideList = [{
  img: "images/img1.jpg",
},
{
  img: "images/img2.jpg",
},
{
  img: "images/img3.jpg",
},
{
  img: "images/img4.jpg",
},
{
  img: "images/img5.jpg",
},
{
  img: "images/img6.jpg",
},
{
  img: "images/img7.jpg",
},
{
  img: "images/img8.jpg",
},];


const image = document.querySelector('img.slider');
const h1 = document.querySelector('h1.slider');
const time = 3000;
let active = 0;


const changeSlide = (e) =>{ 
      active++;

      if(active === slideList.length){
          active = 0;
      }
      image.src = slideList[active].img;
}
let indexInterval =  setInterval(changeSlide, time);



const btn = document.querySelector('.go');
const addNumber = document.querySelector('.addNumber');
const question = document.querySelector('.que');
const clear = document.querySelector('.clear');
const input = document.querySelector('.pyt1');
const postac = document.querySelector('.postac');
const box = document.querySelector('.box');
let number = 2;
let przejscie = 0;

const que = [
'DOadopq',
'Ile lat ma robur',
'Ile lat ma ich firma',
'Wpisz słowo',
'Wybierz a,b,c',
'Cyfra',
]


btn.addEventListener('click', () =>{
  
  przejscie++;
  addNumber.textContent = number++;
  
  que.forEach(function(item, index){
    
    question.textContent = que[index]; 
    input.value = "";
  });
  que.pop();
 

    if(przejscie === 2){
      postac.classList.add('active');
      input.classList.add('remove');
    }
    else if(przejscie === 3){
      postac.classList.remove('active');
      input.classList.remove('remove');
      input.type = 'date';
    }
    else if(przejscie === 4){
  
    }
    else if(przejscie === 7){
      alert('Dziękujemy za ukończenie krótkiego quizu');
      // Tu podasz naszą stronę pierwszą
      window.location.href = 'https://developer.mozilla.org/pl/docs/Web/JavaScript/Reference/Global_Objects/Array';
    }

    // if(number === 3 || number === 4){
    //   if(input.value === ""){
    //     alert("Wpisz coś !!");
    //     przejscie - 1;
    //   }
    // } 

  

  
})
