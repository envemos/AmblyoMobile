.class public Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;
.super Ljava/lang/Object;
.source "List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListStyle"
.end annotation


# instance fields
.field public background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field public fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

.field public fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

.field public over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

    .line 340
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 2

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

    .line 340
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    .line 349
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 350
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 351
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 352
    iput-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
    .locals 2

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

    .line 340
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    .line 356
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 357
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorSelected:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 358
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->fontColorUnselected:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 359
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 360
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    return-void
.end method
