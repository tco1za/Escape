//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Escape
{
    using System;
    using System.Collections.Generic;
    
    public partial class Entity
    {
        public int Id { get; set; }
    
        public virtual EntityType EntityType { get; set; }
        public virtual InstantiatedEntity InstantiatedEntity { get; set; }
        public virtual CellCoords CellCoord { get; set; }
        public virtual ScreenCoords ScreenCoord { get; set; }
    }
}
