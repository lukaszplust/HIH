const slideList = [{
  img: "img/img1.jpg",
},
{
  img: "img/img2.jpg",
},
{
  img: "img/img3.jpg",
},
{
  img: "img/img4.jpg",
},
{
  img: "img/img5.jpg",
},
{
  img: "img/img6.jpg",
},
{
  img: "img/img7.jpg",
},
{
  img: "img/img8.jpg",
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
