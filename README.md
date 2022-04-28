# Tutorial para o Hack@Cloud Oracle

Sabemos quem nem todas as pessoas possuem conhecimentos na área de desenvolvimento e por isso trouxemos aqui nesse Readme os passos para executar TODAS as tarefas relacionadas a aplicação front-end.

Caso você seja um competidor que gosta de jogar no modo HARD, sugerimos que tente executar as tarefas sem visualizar as nossas dicas e se por algum motivo não conseguir, venha aqui e veja a solução para o seu problema :)

## Instalações de ferramentas, clonagem do projeto e execução local

Temos um vídeo prontinho, mostrando como instalar tudo que você precisa no seu computador, como utilizar o git para clonar e por fim mostramos como rodar localmente o projeto. Para assistir o video é só clicar nesse link aqui: 

[Desistiu de jogar no Hard? Clique aqui rs](https://videohub.oracle.com/media/Hack%40Cloud+-+Como+subir+aplica%C3%A7%C3%A3o+web+em+react+no+ambiente+local/1_f3i78dj0)

# Codificação dos métodos de cadastro e build no container local

Se chegou a hora de codificar sua aplicação e bateu aquela dúvida de como fazer um CRUD no react.js, fique tranquilo(a). Aqui nesse link ja temos um video mostrando como fazer todos os steps para você codar os métodos, gerar uma imagem docker e rodar sua aplicação em um container local. Acesse o link abaixo:

[Já cansou de tentar?](https://videohub.oracle.com/)

# Atenção: Dica para rodar o projeto em container

Nossa aplicação possui uma peculiaridade. É necessário fazer uma única alteração para que ela consiga rodar dentro do container tanto local como no OKE da Oracle.

Hoje no nosso arquivo package.json temos o seguinte script:

````

  "scripts": {
    "start": "react-scripts start",
    "build": "react-scripts build",
    "test": "react-scripts test",
    "eject": "react-scripts eject"
  },

````

Precisaremos fazer uma unica alteração e colocar esse trecho no start

### `--openssl-legacy-provider`

O código ficara assim: 

````

  "scripts": {
    "start": "react-scripts --openssl-legacy-provide start",
    "build": "react-scripts build",
    "test": "react-scripts test",
    "eject": "react-scripts eject"
  },

````

Pronto, agora podemos gerar a imagem docker e colocar pra rodar no container. Para rodar novamente a aplicação, remova o trecho que tudo voltará ao normal.
