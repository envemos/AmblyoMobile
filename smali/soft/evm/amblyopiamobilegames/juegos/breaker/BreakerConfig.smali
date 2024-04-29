.class public Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;
.super Landroid/app/Activity;
.source "BreakerConfig.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field SKnivel:Landroid/widget/SeekBar;

.field breaker:Landroid/content/SharedPreferences;

.field editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private incializar()V
    .locals 5

    const-string v0, "Breaker"

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;->breaker:Landroid/content/SharedPreferences;

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const v0, 0x7f0a01e9

    .line 38
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;->SKnivel:Landroid/widget/SeekBar;

    const v0, 0x7f0a0257

    .line 39
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 40
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;->SKnivel:Landroid/widget/SeekBar;

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;->breaker:Landroid/content/SharedPreferences;

    const-string v3, "level"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nivel inicial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;->breaker:Landroid/content/SharedPreferences;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    new-instance v1, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTextLevel(Landroid/widget/TextView;)V

    .line 43
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;->iniciarBarra()V

    return-void
.end method

.method private iniciarBarra()V
    .locals 2

    .line 47
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;->SKnivel:Landroid/widget/SeekBar;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig$1;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method


# virtual methods
.method public finish(Landroid/view/View;)V
    .locals 0

    .line 80
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;->requestWindowFeature(I)Z

    .line 28
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d001f

    .line 30
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;->setContentView(I)V

    .line 31
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;->incializar()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
