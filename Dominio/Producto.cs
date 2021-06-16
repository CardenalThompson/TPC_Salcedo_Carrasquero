﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
   public class Producto
    {
        public long Id { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public Marca marca { get; set; }
        public Categoria cat { get; set; }
        public string Imagen { get; set; }
        public bool Estado { get; set; }
    }
}