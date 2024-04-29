.class public Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;
.super Landroid/app/Activity;
.source "TetrisConfig.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field autoInc:Landroid/widget/CheckBox;

.field editor:Landroid/content/SharedPreferences$Editor;

.field tetris:Landroid/content/SharedPreferences;

.field tvnivel:Landroid/widget/TextView;

.field velocidad:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private incializar()V
    .locals 5

    const-string v0, "Tetris"

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->tetris:Landroid/content/SharedPreferences;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const v0, 0x7f0a00a1

    .line 49
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->autoInc:Landroid/widget/CheckBox;

    const v0, 0x7f0a01ed

    .line 50
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->velocidad:Landroid/widget/SeekBar;

    const v0, 0x7f0a0263

    .line 52
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->tvnivel:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->autoInc:Landroid/widget/CheckBox;

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->tetris:Landroid/content/SharedPreferences;

    const-string v3, "auto"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 55
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->velocidad:Landroid/widget/SeekBar;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->tetris:Landroid/content/SharedPreferences;

    const-string v2, "level"

    const/4 v3, 0x5

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 56
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->tvnivel:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f110149

    invoke-virtual {p0, v4}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->tetris:Landroid/content/SharedPreferences;

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->iniciarBarra()V

    return-void
.end method

.method private iniciarBarra()V
    .locals 2

    .line 61
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->velocidad:Landroid/widget/SeekBar;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig$1;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private interfaz()V
    .locals 2

    .line 41
    new-instance v0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;-><init>(Landroid/content/Context;)V

    .line 42
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->tvnivel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTextLevel(Landroid/widget/TextView;)V

    .line 43
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->autoInc:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setAutoText(Landroid/widget/CheckBox;)V

    return-void
.end method


# virtual methods
.method public finish(Landroid/view/View;)V
    .locals 0

    .line 105
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->finish()V

    return-void
.end method

.method public onCheckboxClicked(Landroid/view/View;)V
    .locals 2

    .line 95
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v0, "auto"

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 101
    :goto_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->requestWindowFeature(I)Z

    .line 32
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d0033

    .line 34
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->setContentView(I)V

    .line 35
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->incializar()V

    .line 36
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;->interfaz()V

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
