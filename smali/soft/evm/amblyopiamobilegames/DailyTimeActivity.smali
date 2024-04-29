.class public Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;
.super Landroid/app/Activity;
.source "DailyTimeActivity.java"


# static fields
.field public static final DEFAULT:I = 0x2


# instance fields
.field desccription:Landroid/widget/TextView;

.field editor:Landroid/content/SharedPreferences$Editor;

.field minutes:Landroid/widget/TextView;

.field seekBar:Landroid/widget/SeekBar;

.field tiempo_demo_diario:Landroid/content/SharedPreferences;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private incializarComponentes()V
    .locals 1

    const v0, 0x7f0a028f

    .line 78
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->title:Landroid/widget/TextView;

    const v0, 0x7f0a0285

    .line 79
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->minutes:Landroid/widget/TextView;

    const v0, 0x7f0a0284

    .line 80
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->desccription:Landroid/widget/TextView;

    const v0, 0x7f0a01ee

    .line 81
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->seekBar:Landroid/widget/SeekBar;

    return-void
.end method

.method private setFont()V
    .locals 2

    .line 71
    new-instance v0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-direct {v0, p0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;-><init>(Landroid/content/Context;)V

    .line 72
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityText(Landroid/widget/TextView;)V

    .line 73
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->minutes:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityText(Landroid/widget/TextView;)V

    .line 74
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->desccription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityText(Landroid/widget/TextView;)V

    return-void
.end method

.method private setValores()V
    .locals 3

    const-string v0, "TiempoDemoDiario"

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->tiempo_demo_diario:Landroid/content/SharedPreferences;

    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 44
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->tiempo_demo_diario:Landroid/content/SharedPreferences;

    const-string v1, "tiempo_diario"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v2, v0, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f110119

    invoke-virtual {p0, v2}, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->minutes:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 48
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity$1;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity$1;-><init>(Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public go_back(Landroid/view/View;)V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->requestWindowFeature(I)Z

    .line 30
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d0020

    .line 33
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->setContentView(I)V

    .line 35
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->incializarComponentes()V

    .line 36
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->setFont()V

    .line 37
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;->setValores()V

    return-void
.end method
