import { Prisma } from "@prisma/client";
import { Categoria } from "../../domain/categoria/categoria.entity";
import { ICategoria, RecuperarCategoriaProps } from "../../domain/categoria/categoria.types";

class CategoriaMap {

    public static toDTO(categoria: Categoria): ICategoria {
        return {
          id: categoria.id,
          nome: categoria.nome,
          dataCriacao: categoria.dataCriacao,
          dataAtualização: categoria.dataAtualizacao
        }
    }

    public static toDomain(categoria: RecuperarCategoriaProps): Categoria {
        return Categoria.recuperar(categoria);
    }

    public static fromPrismaModelToDomain(categoriaPrisma: Prisma.CategoriaCreateInput): Categoria{
      return CategoriaMap.toDomain({
        id: categoriaPrisma.id,
        nome: categoriaPrisma.nome,
        dataCriacao: categoriaPrisma.dataCriacao as Date,
        dataAtualização: categoriaPrisma.dataAtualizacao as Date
      });
	  } 

}

export { CategoriaMap };
