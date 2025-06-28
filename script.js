
gsap.timeline()
    .from('.bg',{opacity:0,duration:3,delay:1})
    .from('.sun',{opacity:0,duration:2,scale:0,ease:'back'})
    .to('.sun',{opacity:0.3,duration:2})
    .from('h1',{opacity:0,duration:2,scale:0,ease:'bounce'})