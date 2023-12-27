function validarSenhas(){
			var novaSenha = document.getElementById('password');
			var novaSenhaConfirmacao = document.getElementById('comfirm-password');
			
			if(novaSenha.value == novaSenhaConfirmacao.value){
				return true;	
			}
			else {
				alert('Senhas não conferem, por favor verifique!');
				return false;
			}
		}