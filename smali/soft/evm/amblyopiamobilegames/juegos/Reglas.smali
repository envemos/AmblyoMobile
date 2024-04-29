.class public Lsoft/evm/amblyopiamobilegames/juegos/Reglas;
.super Landroid/app/Activity;
.source "Reglas.java"


# instance fields
.field nombre:Landroid/widget/TextView;

.field reglas:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private iniciar()V
    .locals 3

    .line 44
    new-instance v0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/Reglas;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a024c

    .line 45
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/Reglas;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/Reglas;->nombre:Landroid/widget/TextView;

    const v1, 0x7f0a024b

    .line 46
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/Reglas;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/Reglas;->reglas:Landroid/widget/TextView;

    .line 47
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/Reglas;->nombre:Landroid/widget/TextView;

    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->nombre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/Reglas;->reglas:Landroid/widget/TextView;

    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->texto:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/Reglas;->nombre:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setRulesName(Landroid/widget/TextView;)V

    .line 50
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/Reglas;->reglas:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setRulesText(Landroid/widget/TextView;)V

    return-void
.end method

.method private pintarFondo()V
    .locals 3

    const-string v0, "MisPreferencias"

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/Reglas;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "fondo"

    .line 37
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/Reglas;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/Reglas;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public go_back(Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/Reglas;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/Reglas;->requestWindowFeature(I)Z

    .line 27
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/Reglas;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d002b

    .line 29
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/Reglas;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/Reglas;->iniciar()V

    .line 31
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/Reglas;->pintarFondo()V

    return-void
.end method
