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
    
    public partial class WorldCoord
    {
        public int Id { get; set; }
        public double x { get; set; }
        public double y { get; set; }
        public int entityID { get; set; }
    
        public virtual Entity Entity { get; set; }
    }
}