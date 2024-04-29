.class public Lsoft/evm/amblyopiamobilegames/info/InfoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "InfoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abrirWeb(Ljava/lang/String;)V
    .locals 2

    .line 64
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreate$0$soft-evm-amblyopiamobilegames-info-InfoActivity(Landroid/view/View;)V
    .locals 0

    const p1, 0x7f11015b

    .line 23
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->abrirWeb(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$1$soft-evm-amblyopiamobilegames-info-InfoActivity(Landroid/view/View;)V
    .locals 0

    const p1, 0x7f11015d

    .line 26
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->abrirWeb(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$2$soft-evm-amblyopiamobilegames-info-InfoActivity(Landroid/view/View;)V
    .locals 0

    const p1, 0x7f11015f

    .line 29
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->abrirWeb(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$3$soft-evm-amblyopiamobilegames-info-InfoActivity(Landroid/view/View;)V
    .locals 0

    const p1, 0x7f110161

    .line 32
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->abrirWeb(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreate$4$soft-evm-amblyopiamobilegames-info-InfoActivity(Landroid/view/View;)V
    .locals 0

    const p1, 0x7f110163

    .line 35
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->abrirWeb(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 19
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    new-instance p1, Lmehdi/sakout/aboutpage/Element;

    invoke-direct {p1}, Lmehdi/sakout/aboutpage/Element;-><init>()V

    const v0, 0x7f11015c

    .line 22
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmehdi/sakout/aboutpage/Element;->setTitle(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 23
    new-instance v0, Lsoft/evm/amblyopiamobilegames/info/InfoActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity$$ExternalSyntheticLambda0;-><init>(Lsoft/evm/amblyopiamobilegames/info/InfoActivity;)V

    invoke-virtual {p1, v0}, Lmehdi/sakout/aboutpage/Element;->setOnClickListener(Landroid/view/View$OnClickListener;)Lmehdi/sakout/aboutpage/Element;

    .line 24
    new-instance v0, Lmehdi/sakout/aboutpage/Element;

    invoke-direct {v0}, Lmehdi/sakout/aboutpage/Element;-><init>()V

    const v1, 0x7f11015e

    .line 25
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmehdi/sakout/aboutpage/Element;->setTitle(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 26
    new-instance v1, Lsoft/evm/amblyopiamobilegames/info/InfoActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity$$ExternalSyntheticLambda1;-><init>(Lsoft/evm/amblyopiamobilegames/info/InfoActivity;)V

    invoke-virtual {v0, v1}, Lmehdi/sakout/aboutpage/Element;->setOnClickListener(Landroid/view/View$OnClickListener;)Lmehdi/sakout/aboutpage/Element;

    .line 27
    new-instance v1, Lmehdi/sakout/aboutpage/Element;

    invoke-direct {v1}, Lmehdi/sakout/aboutpage/Element;-><init>()V

    const v2, 0x7f110160

    .line 28
    invoke-virtual {p0, v2}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmehdi/sakout/aboutpage/Element;->setTitle(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 29
    new-instance v2, Lsoft/evm/amblyopiamobilegames/info/InfoActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity$$ExternalSyntheticLambda2;-><init>(Lsoft/evm/amblyopiamobilegames/info/InfoActivity;)V

    invoke-virtual {v1, v2}, Lmehdi/sakout/aboutpage/Element;->setOnClickListener(Landroid/view/View$OnClickListener;)Lmehdi/sakout/aboutpage/Element;

    .line 30
    new-instance v2, Lmehdi/sakout/aboutpage/Element;

    invoke-direct {v2}, Lmehdi/sakout/aboutpage/Element;-><init>()V

    const v3, 0x7f110162

    .line 31
    invoke-virtual {p0, v3}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmehdi/sakout/aboutpage/Element;->setTitle(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 32
    new-instance v3, Lsoft/evm/amblyopiamobilegames/info/InfoActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity$$ExternalSyntheticLambda3;-><init>(Lsoft/evm/amblyopiamobilegames/info/InfoActivity;)V

    invoke-virtual {v2, v3}, Lmehdi/sakout/aboutpage/Element;->setOnClickListener(Landroid/view/View$OnClickListener;)Lmehdi/sakout/aboutpage/Element;

    .line 33
    new-instance v3, Lmehdi/sakout/aboutpage/Element;

    invoke-direct {v3}, Lmehdi/sakout/aboutpage/Element;-><init>()V

    const v4, 0x7f110164

    .line 34
    invoke-virtual {p0, v4}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmehdi/sakout/aboutpage/Element;->setTitle(Ljava/lang/String;)Lmehdi/sakout/aboutpage/Element;

    .line 35
    new-instance v4, Lsoft/evm/amblyopiamobilegames/info/InfoActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity$$ExternalSyntheticLambda4;-><init>(Lsoft/evm/amblyopiamobilegames/info/InfoActivity;)V

    invoke-virtual {v3, v4}, Lmehdi/sakout/aboutpage/Element;->setOnClickListener(Landroid/view/View$OnClickListener;)Lmehdi/sakout/aboutpage/Element;

    .line 37
    new-instance v4, Lmehdi/sakout/aboutpage/AboutPage;

    invoke-direct {v4, p0}, Lmehdi/sakout/aboutpage/AboutPage;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 38
    invoke-virtual {v4, v5}, Lmehdi/sakout/aboutpage/AboutPage;->isRTL(Z)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object v4

    const v5, 0x7f0e0020

    .line 39
    invoke-virtual {v4, v5}, Lmehdi/sakout/aboutpage/AboutPage;->setImage(I)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object v4

    const v5, 0x7f11010f

    .line 40
    invoke-virtual {p0, v5}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmehdi/sakout/aboutpage/AboutPage;->setDescription(Ljava/lang/CharSequence;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object v4

    const v5, 0x7f1100b9

    .line 41
    invoke-virtual {p0, v5}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmehdi/sakout/aboutpage/AboutPage;->addGroup(Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object v4

    .line 42
    invoke-virtual {v4, p1}, Lmehdi/sakout/aboutpage/AboutPage;->addItem(Lmehdi/sakout/aboutpage/Element;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object p1

    .line 43
    invoke-virtual {p1, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addItem(Lmehdi/sakout/aboutpage/Element;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object p1

    .line 44
    invoke-virtual {p1, v1}, Lmehdi/sakout/aboutpage/AboutPage;->addItem(Lmehdi/sakout/aboutpage/Element;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object p1

    .line 45
    invoke-virtual {p1, v2}, Lmehdi/sakout/aboutpage/AboutPage;->addItem(Lmehdi/sakout/aboutpage/Element;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object p1

    .line 46
    invoke-virtual {p1, v3}, Lmehdi/sakout/aboutpage/AboutPage;->addItem(Lmehdi/sakout/aboutpage/Element;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object p1

    const v0, 0x7f110090

    .line 47
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addGroup(Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object p1

    const-string v0, "contact@envemos.com"

    .line 48
    invoke-virtual {p1, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addEmail(Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object p1

    const v0, 0x7f110041

    .line 49
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addWebsite(Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object p1

    const-string v0, "soft.evm.amblyopiamobilegames"

    .line 50
    invoke-virtual {p1, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addPlayStore(Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object p1

    const-string v0, "UCZ3NePFbH7NEu0cWsgSB9MQ"

    .line 51
    invoke-virtual {p1, v0}, Lmehdi/sakout/aboutpage/AboutPage;->addYoutube(Ljava/lang/String;)Lmehdi/sakout/aboutpage/AboutPage;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lmehdi/sakout/aboutpage/AboutPage;->create()Landroid/view/View;

    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
