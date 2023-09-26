/*
  Warnings:

  - You are about to drop the `_CategoriaToProduto` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "_CategoriaToProduto" DROP CONSTRAINT "_CategoriaToProduto_A_fkey";

-- DropForeignKey
ALTER TABLE "_CategoriaToProduto" DROP CONSTRAINT "_CategoriaToProduto_B_fkey";

-- DropTable
DROP TABLE "_CategoriaToProduto";

-- CreateTable
CREATE TABLE "produto_categoria " (
    "produto_id" UUID NOT NULL,
    "categoria_id" UUID NOT NULL,
    "data_criacao" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "data_atualizacao" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "produto_categoria _pkey" PRIMARY KEY ("produto_id","categoria_id")
);

-- AddForeignKey
ALTER TABLE "produto_categoria " ADD CONSTRAINT "produto_categoria _produto_id_fkey" FOREIGN KEY ("produto_id") REFERENCES "Produto"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "produto_categoria " ADD CONSTRAINT "produto_categoria _categoria_id_fkey" FOREIGN KEY ("categoria_id") REFERENCES "categoria"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
