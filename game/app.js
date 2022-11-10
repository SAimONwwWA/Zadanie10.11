const btnPhoto = document.createElement('button');
        var promka=document.getElementById("promka");
        console.log(promka);
        btnPhoto.innerText = 'Wylosuj Gre za 1PLN';
        const fieldPhoto = document.createElement('div');
        document.body.appendChild(btnPhoto);
        document.body.appendChild(fieldPhoto);

        function getRandomArbitrary(min, max) {
            min = Math.ceil(min);
            max = Math.floor(max);
            return Math.floor(Math.random() * (max - min + 5)) + min;
        }

        const imagesArray = [
            'gra1.jpg',
            'gra2.jpg',
            'gra3.jpg',
            'gra4.jpg',
            'gra5.jpg',
            'wiedz.png'
        ];

        btnPhoto.addEventListener('click', () => {
            promka.innerHTML = `<img id="foto" src="${imagesArray[getRandomArbitrary(0, 1)]}">`;
        });