.class public Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SpaceConfig.java"


# instance fields
.field editor:Landroid/content/SharedPreferences$Editor;

.field space:Landroid/content/SharedPreferences;

.field tvnivel:Landroid/widget/TextView;

.field velocidad:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private incializar()V
    .locals 5

    const-string v0, "Space"

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->space:Landroid/content/SharedPreferences;

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const v0, 0x7f0a01ec

    .line 43
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->velocidad:Landroid/widget/SeekBar;

    const v0, 0x7f0a0262

    .line 45
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->tvnivel:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->velocidad:Landroid/widget/SeekBar;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->space:Landroid/content/SharedPreferences;

    const-string v2, "level"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 48
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->tvnivel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f110149

    invoke-virtual {p0, v4}, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->space:Landroid/content/SharedPreferences;

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->iniciarBarra()V

    return-void
.end method

.method private iniciarBarra()V
    .locals 2

    .line 53
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->velocidad:Landroid/widget/SeekBar;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig$1;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private interfaz()V
    .locals 2

    .line 36
    new-instance v0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;-><init>(Landroid/content/Context;)V

    .line 37
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->tvnivel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTextLevel(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public finish(Landroid/view/View;)V
    .locals 0

    .line 76
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 24
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->requestWindowFeature(I)Z

    .line 27
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d0031

    .line 29
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->incializar()V

    .line 31
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;->interfaz()V

    return-void
.end method
