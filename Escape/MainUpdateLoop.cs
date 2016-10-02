using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using System;
using System.Linq;
using System.Diagnostics;
using System.Data.Linq.Mapping;
using System.Data.Linq;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Runtime.Serialization;
using System.Data.Entity.Core.Objects.DataClasses;
using System.Reflection;

namespace Escape
{


    /// <summary>
    /// This is the main type for your game.
    /// </summary>
    public class MainUpdateLoop : Game
    {
        //public Entity instantiateEntity(string name)
        //{
        //    Entity newEntity;
        //    using (var db = new EscapeDatabaseEntities())
        //    {
        //        var entityId = (from t in db.EntityTypes
        //                     where t.name == name
        //                      select t.entityID).FirstOrDefault();
        //        newEntity = db.Entities.AsNoTracking().FirstOrDefault(item => item.Id == entityId);
        //        object source = newEntity;
        //        TypeInfo entityTypeInfo = typeof(Entity).GetTypeInfo();
        //        IEnumerable<PropertyInfo> declaredProperties = entityTypeInfo.DeclaredProperties;
        //        foreach (var property in declaredProperties)
        //        {
        //            if (property.Name != "Id" && property.Name != "EntityTypes" && property.Name != "Scene")
        //            {
        //                PropertyInfo prop = source.GetType().GetProperty(property.Name);
        //                if (prop != null)
        //                {
        //                    source = prop.GetValue(source, null);
        //                    PropertyInfo propertyToSet = source.GetType().GetProperty("entityID");
        //                    propertyToSet.SetValue(source, -1, null);
        //                }
        //            }
        //        }
        //        db.Entities.Add(newEntity);
        //        //InstantiateEntity newInstantiatedEntity = new instantiateEntity();


        //    }
        //    return newEntity;
        //}

        GraphicsDeviceManager graphics;
        SpriteBatch spriteBatch;


        public MainUpdateLoop()
        {
       //     CheckDatabaseIntegrity.isDatabaseCoherent();

        //    using (var db = new EscapeDatabaseEntities())
       //     {
//                db.Entities.Add(newEmp);
 //               db.SaveChanges();

    //        }


            graphics = new GraphicsDeviceManager(this);
            Content.RootDirectory = "Content";
        }

        /// <summary>
        /// Allows the game to perform any initialization it needs to before starting to run.
        /// This is where it can query for any required services and load any non-graphic
        /// related content.  Calling base.Initialize will enumerate through any components
        /// and initialize them as well.
        /// </summary>
        protected override void Initialize()
        {
            // TODO: Add your initialization logic here

            base.Initialize();
        }

        /// <summary>
        /// LoadContent will be called once per game and is the place to load
        /// all of your content.
        /// </summary>
        protected override void LoadContent()
        {
            // Create a new SpriteBatch, which can be used to draw textures.
            spriteBatch = new SpriteBatch(GraphicsDevice);

            // TODO: use this.Content to load your game content here
        }

        /// <summary>
        /// UnloadContent will be called once per game and is the place to unload
        /// game-specific content.
        /// </summary>
        protected override void UnloadContent()
        {
            // TODO: Unload any non ContentManager content here
        }

        /// <summary>
        /// Allows the game to run logic such as updating the world,
        /// checking for collisions, gathering input, and playing audio.
        /// </summary>
        /// <param name="gameTime">Provides a snapshot of timing values.</param>
        protected override void Update(GameTime gameTime)
        {
            if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed || Keyboard.GetState().IsKeyDown(Keys.Escape))
                Exit();

            // TODO: Add your update logic here

            base.Update(gameTime);
        }

        /// <summary>
        /// This is called when the game should draw itself.
        /// </summary>
        /// <param name="gameTime">Provides a snapshot of timing values.</param>
        protected override void Draw(GameTime gameTime)
        {
            GraphicsDevice.Clear(Color.CornflowerBlue);

            // TODO: Add your drawing code here

            base.Draw(gameTime);
        }
    }
}
