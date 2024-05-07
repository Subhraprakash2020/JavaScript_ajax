/**
 * 
 */


$(document).ready(function() {
    // Your code here
    // For example, prevent a form submission
    $('form').submit(function(event) {
        event.preventDefault(); // Prevents the default form submission
        // You can put further actions here
    });
});
/*
	var modelView = '<h:outputText value="#{modelView}"/>';
	
	$(document).ready(function() {
		togelModelView();
	});;
	
	function togelModelView() {
		alert(modelView);
		if(modelView == 'open') {
			openModal();
		} else if(modelView == 'close'){
			closeModal();
		}
	}
	function openModalNew() {
    	document.getElementById("myModal").style.display = "block";
    }
 
    function closeModalNew() {
    	document.getElementById("myModal").style.display = "none";
    }
	*/
	
	const openModalButtons = document.querySelectorAll('.open-modal'),
      modal = document.querySelector('.modal'),
      closeModalButtons = document.querySelectorAll('.close-modal');

openModalButtons.forEach(openBtn => {
  openBtn.addEventListener('click', openModal)
});

closeModalButtons.forEach(closeBtn => {
  closeBtn.addEventListener('click', closeModal)
});

function openModal() {
  modal.classList.add('visible');
}

function closeModal() {
  modal.classList.remove('visible');
}


/* $(document).ready(function(){
        $('.open-modal').click(function(event){
            event.preventDefault(); // Prevent the default behavior of the link
            // Your code to open the modal goes here
            const openModalButtons = document.querySelectorAll('.open-modal'),
      modal = document.querySelector('.modal'),
      closeModalButtons = document.querySelectorAll('.close-modal');

		openModalButtons.forEach(openBtn => {
		  openBtn.addEventListener('click', openModal)
		});
		
		closeModalButtons.forEach(closeBtn => {
		  closeBtn.addEventListener('click', closeModal)
		});
		
		function openModal() {
		  modal.classList.add('visible');
		}
		
		function closeModal() {
		  modal.classList.remove('visible');
		}
        });
    });*/