Feature: Adicionar categoria ao produtos
    Como um <Administrador>
    Eu quero <Adicionar uma categoria ao produto>
    De modo que <O produto possa ter categorias condizentes com sua natureza>

Scenario: Categoria válida e produto válido apto a ter uma nova categoria (Padrão)
    Dado (Given) [
        Um produto válido apto a ter uma nova categoria adionada - Ter no mínimo (1) e no máximo (2) categoria(s) já adionada(s)
        Uma categoria válida
    ]
    Quando (When) [Solicitar a adição da categoria ao produto]
    Então (Then) [A categoria deve ser adionada e retornada]

Scenario: Categoria válida e produto válido inapto a ter uma nova categoria adionada - quantidade máxima de categorias
    Dado (Given) [
        Um produto válido inapto a ter uma nova categoria adionada - Ter (3) categoris já adionadas
        Uma categoria válida
    ]
    Quando (When) [Solicitar a adição da categoria ao produto]
    Então (Then) [Um erro informando que o produto já possui número máximo de categorias adionadas]

Scenario: Categoria válida e produto válido inapto a ter uma categoria adionada - categoria já adionada
    Dado (Given) [
        Um produto válido inapto a ter uma categoria adionada - categoris já adionada
        Uma categoria válida
    ]
    Quando (When) [Solicitar a adição da categoria ao produto]
    Então (Then) [Um erro informando que o produto já possui a categorias adionadas]