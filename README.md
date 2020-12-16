**PS: Não utilizar o Bash Insulter em casos de depressão ou tendências a suicídio.**

# Bash Insulter

Ser insultado pelo próprio terminal apenas por digitar um comando errado.

Ex:

```bash
goku@PC:~ $ sl

  Vocẽ fala computador???

-bash: sl: command not found
goku@PC:~ $ gti status

  Esse é o motivo porque ninguém gosta de você.

-bash: gti: command not found
gouk@PC:~ $ sp aux

  Acho melhor você dar um tempo.

-bash: sp: command not found
```

# Compatibilidade 
* Bash v4 e versões mais novas.
* Zsh

# Instalação

    git clone https://github.com/rafaelbizzo/bash-insulter.git bash-insulter
    sudo cp bash-insulter/src/bash.command-not-found /etc/

Agora abra o arquivo `/etc/bash.bashrc` ou qualquer outro arquivo que você pode configurar seu shell automaticamente durante o login e adicione este script:
```
if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi
```
De um `source /etc/bash.command-not-found` ou encerre a sessão e veja se funcionou.

Note que se você utiliza `zsh` edite o arquivo `.zshrc`                

# Configuração
Bash Insulte pode ser customizado até mesmo para se tornar bonito e politizado, basta adicionar caracteres a `CMD_NOT_FOUND_MSGS` ou `CMD_NOT_FOUND_MSGS_APPEND`. Os valores devem ser variados. Com `CMD_NOT_FOUND_MSGS` substitui as mensagens padrões, enquanto `CMD_NOT_FOUND_MSGS_APPEND` anexa mais mensagens às existentes.

No exemplo eu criei um arquivo chamado `/etc/bash.command-not-found-messages` com as seguinte informações:

    CMD_NOT_FOUND_MSGS=(
        "You are so smart!"
        "You look pretty today!"
        "I don't know what to say"
    )

Então de um `source` nesse arquivo antes de adicionar o seguinte script á `/etc/bash.bashrc`:
```
if [ -f /etc/bash.command-not-found-messages ]; then
    . /etc/bash.command-not-found-messages
fi

if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi
```

Agora saia e volte. Os resultados finais são aqueles que você adicionou em relação aos originais.

This repository is based on [hkbakke's](https://github.com/hkbakke) [bash-insulter](https://github.com/hkbakke), just created to translate from english to portuguese (Brazil)

Repositório original: https://github.com/hkbakke/bash-insulter
