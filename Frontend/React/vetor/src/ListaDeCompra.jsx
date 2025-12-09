import React, { useState } from 'react';

const ListaDeCompra = () => {
  const [itens, setItens] = useState([]);
  const [novoItem, setNovoItem] = useState('');

  const adicionarItem = () => {
    if (novoItem.trim() !== '') {
      setItens([...itens, novoItem]);
      setNovoItem('');
    }
  };

  const limparLista = () => {
    setItens([]);
  };

  return (
    <div>
      <h1>Lista de Compras</h1>
      <ul>
        {itens.map((item, index) => (
          <li key={index}>{item}</li>
        ))}
      </ul>
      <input
        type="text"
        value={novoItem}
        onChange={(e) => setNovoItem(e.target.value)}
      />
      <button onClick={adicionarItem}>Adicionar Item</button>
      <button onClick={limparLista}>Limpar Lista</button>
    </div>
  );
};

export default ListaDeCompra;