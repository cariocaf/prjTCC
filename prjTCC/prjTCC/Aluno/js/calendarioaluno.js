document.addEventListener('DOMContentLoaded', () => {
    const mesAno = document.getElementById('mes-ano');
    const calendario = document.getElementById('calendario');
    const botaoAnterior = document.querySelector('.mes-anterior');
    const botaoProximo = document.querySelector('.mes-proximo');
    const modal = document.getElementById('modal');
    const imagemModal = document.getElementById('imagem-modal');
    const fecharModal = document.getElementById('fechar');

    let dataAtual = new Date();

    function atualizarCalendario() {
        const ano = dataAtual.getFullYear();
        const mes = dataAtual.getMonth();

        mesAno.textContent = `${nomeMes(mes)} ${ano}`;

        calendario.innerHTML = '';
        const primeiroDia = new Date(ano, mes, 1).getDay();
        const ultimoDia = new Date(ano, mes + 1, 0).getDate();
        const ultimoDiaDoMesAnterior = new Date(ano, mes, 0).getDate();

        // Dias da semana
        const diasDaSemana = ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb'];
        diasDaSemana.forEach(dia => {
            calendario.innerHTML += `<div class="header-dia">${dia}</div>`;
        });

        // Preencher com células do mês anterior
        const totalDiasMesAnterior = (primeiroDia + 6) % 7; // Total de dias a preencher do mês anterior
        const mesAnterior = mes === 0 ? 11 : mes - 1;
        const anoAnterior = mes === 0 ? ano - 1 : ano;

        for (let i = 0; i < totalDiasMesAnterior; i++) {
            const diaDoMesAnterior = ultimoDiaDoMesAnterior - totalDiasMesAnterior + i + 1;
            calendario.innerHTML += `<div class="dia vazio">${diaDoMesAnterior}</div>`;
        }

        // Preencher os dias do mês atual
        for (let i = 1; i <= ultimoDia; i++) {
            let conteudoExtra = '';
            if (mes === 7 && i === 15) { // Exemplo de imagem para agosto
                conteudoExtra = `<img src="images/evento.jpeg" alt="Evento Agosto" class="calendario-imagem">`;
            }
            if (mes === 8 && i === 10) { // Exemplo de imagem para setembro
                conteudoExtra = `<img src="images/evento (2).jpeg" alt="Evento Setembro" class="calendario-imagem">`;
            }

            calendario.innerHTML += `
                <div class="dia">
                    <div class="numero">${i}</div>
                    ${conteudoExtra}
                </div>
            `;
        }

        // Preencher com células do mês seguinte
        const totalCeldas = 42; // Total de células para preencher uma grade de 6x7
        const totalDias = primeiroDia + ultimoDia;
        const diasExtras = totalCeldas - totalDias;

        for (let i = 0; i < diasExtras; i++) {
            calendario.innerHTML += `<div class="dia vazio"></div>`;
        }

        // Adiciona o evento de clique para abrir a imagem
        document.querySelectorAll('.calendario-imagem').forEach(imagem => {
            imagem.addEventListener('click', () => {
                imagemModal.src = imagem.src;
                modal.style.display = 'flex';
            });
        });
    }

    function nomeMes(mes) {
        const meses = [
            'Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho',
            'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'
        ];
        return meses[mes];
    }

    botaoAnterior.addEventListener('click', () => {
        dataAtual.setMonth(dataAtual.getMonth() - 1);
        atualizarCalendario();
    });

    botaoProximo.addEventListener('click', () => {
        dataAtual.setMonth(dataAtual.getMonth() + 1);
        atualizarCalendario();
    });

    // Fecha o modal quando o botão de fechar é clicado
    fecharModal.addEventListener('click', () => {
        modal.style.display = 'none';
    });

    // Fecha o modal quando clicar fora da imagem
    window.addEventListener('click', (event) => {
        if (event.target === modal) {
            modal.style.display = 'none';
        }
    });

    atualizarCalendario(); // Inicializa o calendário
});
