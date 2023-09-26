import { PrismaClient  } from "@prisma/client";
import { DomainException } from "@shared/domain/domain.exception";
import { Console, error } from "console";
 
 const prisma = new PrismaClient();

 async function main() {
    
   const ListaCategoria= await prisma.categoria
 }

 main()
    .then(async () => {
         
   await prisma.$disconnect()
    })
    .catch(async (error) => {
     if (error instanceof DomainException){
      console.log(`Execeção de Dóminio`)
      console.log(error.message)
    }
    else {
      console.log(`Outrasa Exceções`)
      console.log(error.message);
    }
    await prisma.$disconnect()
    process.exit(1)
   });