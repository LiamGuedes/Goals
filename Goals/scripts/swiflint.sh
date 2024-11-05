if which swiftlint >/dev/null; then
    if [[ -n $WORKSPACE ]]; then
        echo "executando a partir da CI" && exit 0
    fi
    swiftlint
else
    echo "Swiftlint não encontrado no sistema. Fazendo o download da versao mais recente ..."
    brew install swiftlint
    echo "Swiftlint instalado com sucesso. Prepara a Aspirina."
    swiftlint
fi
