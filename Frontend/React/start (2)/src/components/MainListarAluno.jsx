import { Link } from "react-router-dom";

function MainListarAluno() {

    function erroListarAluno() {
        window.Lobibox.notify('error', { // error -> vermelho, sucess => verde, info => azul.
            pauseDelayOnHover: true,
            size: 'mini', // -> tamanho deixa ela pequena e tirando ele aumenta.
            rounded: true, // -> borda da caixa arrendondadas.
            sound: false, // -> desativa o som para evitar erro.
            delayIndicator: true, // -> delay barrinha em baixo carregando.
            icon: 'bi bi-x-circle-fill', // -> icon que vem do bootstrap para o alerta.
            continueDelayOnInactiveTab: false,
            position: 'top right',
            msg: 'Erro ao buscar os alunos no banco de dados!' 
        });
    }
    erroListarAluno();

    let alunos = [
        { id: '1', nome: 'Robson' },
        { id: '2', nome: 'Galileu' },
        { id: '3', nome: 'Elliot' }
    ]

    function excluirAluno(id) {
        // Criar a função POST para excluir dados
        console.log(`O usuário deseja excluir o aluno: ${id}`);
    }

    return (
        <>
            <main className="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <div className="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 className="h2">Listar Aluno</h1>
                </div>
                <table className="table">
                    <thead className="table-dark">
                        <tr>
                            <th>ID:</th>
                            <th>Nome:</th>
                            <th>Ações:</th>
                        </tr>

                    </thead>
                    <tbody>
                        {
                            alunos.map((aluno) => (
                                <tr key={aluno.id}>
                                    <td>{aluno.id}</td>
                                    <td>{aluno.nome}</td>
                                    <td>
                                        <i onClick={() => excluirAluno(aluno.id)} className="bi bi-trash-fill me-2"></i>
                                        <Link to={`/editar-aluno/${aluno.id}`}><i className="bi bi-pencil-square"></i></Link>
                                    </td>
                                </tr>
                            ))
                        }
                    </tbody>
                </table>

            </main>
        </>
    )
}
export default MainListarAluno;