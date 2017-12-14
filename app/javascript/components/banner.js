import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  const buttonDemo = document.getElementById('sweetalert-trigger');
  if (buttonDemo) {
    document.addEventListener('DOMContentLoaded', () => {
      swal({
        title: "Prêt à nager",
        text: "Bienvenue sur votre profil.",
        icon: "success",
        button: "J'ai compris!",
        timer: 3000,
        // allowOutsideClick: true;
      })
    });
  }
}

function bindSweetAlertDeleteProgram() {
  document.getElementById('sweet-alert-delete').addEventListener('click', () => {
    swal({
      title: "T'es sur de toi?!",
      text: "Pas de retour en arrière possible",
      type: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Yes, delete it!',
      cancelButtonText: 'No, cancel!',
      confirmButtonClass: 'btn btn-success',
      cancelButtonClass: 'btn btn-danger',
      buttonsStyling: false,
      reverseButtons: true
    }).then((result) => {
      if (result.value) {
        swal(
          'Deleted!',
          'Your file has been deleted.',
          'success'
        )
      // result.dismiss can be 'cancel', 'overlay',
      // 'close', and 'timer'
      } else if (result.dismiss === 'cancel') {
        swal(
          'Cancelled',
          'Your imaginary file is safe :)',
          'error'
        )
      }
    })
  });
}

export { bindSweetAlertButtonDemo };
export { bindSweetAlertDeleteProgram };

