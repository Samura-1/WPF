//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Fashon
{
    using System;
    using System.Collections.Generic;
    
    public partial class LIst
    {
        public int ID { get; set; }
        public int User_Id { get; set; }
    
        public virtual Users Users { get; set; }
    }
}