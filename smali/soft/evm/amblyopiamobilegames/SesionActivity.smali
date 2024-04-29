.class public Lsoft/evm/amblyopiamobilegames/SesionActivity;
.super Landroid/app/Activity;
.source "SesionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static ETusername:Landroid/widget/EditText; = null

.field private static RbFemale:Landroid/widget/RadioButton; = null

.field private static RbMale:Landroid/widget/RadioButton; = null

.field private static SPcountryList:Landroid/widget/Spinner; = null

.field private static TVNacimiento:Landroid/widget/TextView; = null

.field public static actualizar:Z = false

.field static adapter:Landroid/widget/ArrayAdapter; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final updateURL:Ljava/lang/String; = "https://amblyomobile.app/data/usuarios.php"


# instance fields
.field private TVNacimientotext:Landroid/widget/TextView;

.field private TVemail:Landroid/widget/TextView;

.field editor:Landroid/content/SharedPreferences$Editor;

.field element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

.field private picker:Landroid/app/DatePickerDialog;

.field switch_emailList1:Landroidx/appcompat/widget/SwitchCompat;

.field switch_emailList2:Landroidx/appcompat/widget/SwitchCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lsoft/evm/amblyopiamobilegames/SesionActivity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->inicializarComponentes()V

    return-void
.end method

.method static synthetic access$100(Lsoft/evm/amblyopiamobilegames/SesionActivity;)Landroid/app/DatePickerDialog;
    .locals 0

    .line 66
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->picker:Landroid/app/DatePickerDialog;

    return-object p0
.end method

.method static synthetic access$102(Lsoft/evm/amblyopiamobilegames/SesionActivity;Landroid/app/DatePickerDialog;)Landroid/app/DatePickerDialog;
    .locals 0

    .line 66
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->picker:Landroid/app/DatePickerDialog;

    return-object p1
.end method

.method static synthetic access$200()Landroid/widget/TextView;
    .locals 1

    .line 66
    sget-object v0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->TVNacimiento:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lsoft/evm/amblyopiamobilegames/SesionActivity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->boorar_datos()V

    return-void
.end method

.method private boorar_datos()V
    .locals 4

    .line 450
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 451
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 452
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "MisPreferencias"

    const/4 v1, 0x0

    .line 453
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 454
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 455
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "Estadisticas"

    .line 456
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 457
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 458
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "RemindMePref"

    .line 459
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 460
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 461
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "apprater"

    .line 462
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 463
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 464
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 465
    const-class v0, Lsoft/evm/amblyopiamobilegames/remindMe/AlarmReceiver;

    invoke-static {p0, v0}, Lsoft/evm/amblyopiamobilegames/remindMe/NotificationScheduler;->cancelReminder(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "TiempoDemoDiario"

    .line 466
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 467
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 468
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "Snake"

    .line 469
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 470
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 471
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "FirstUserExperienceGeneral"

    .line 472
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 473
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 474
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "Breaker"

    .line 475
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 476
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 477
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "Flappy"

    .line 478
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 479
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 480
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "Pacman"

    .line 481
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 482
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 483
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "info"

    .line 484
    invoke-virtual {p0, v2, v1}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 485
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 486
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "Space"

    .line 487
    invoke-virtual {p0, v2, v1}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 488
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 489
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 490
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 491
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 492
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "Aviso"

    .line 493
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 494
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 495
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 496
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->partidasDBHelper_historial:Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const-string v2, "HISTORIAL"

    const-string v3, "SUBIDO = 1"

    .line 498
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private incializarEmail()V
    .locals 4

    const v0, 0x7f0a00e9

    .line 236
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->TVemail:Landroid/widget/TextView;

    .line 237
    sget-object v1, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v2, "correo"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->TVemail:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setSesionText(Landroid/widget/TextView;)V

    return-void
.end method

.method private inicializarComponentes()V
    .locals 2

    const v0, 0x7f0a001c

    .line 225
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 226
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v1, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setSesionTextTitle(Landroid/widget/TextView;)V

    .line 227
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->incializarEmail()V

    .line 228
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->inicializarUsername()V

    .line 229
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->inicializarFecha()V

    .line 230
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->inicializarPaises()V

    .line 231
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->inicializarGeneros()V

    .line 232
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->inicializarDemasElementos()V

    return-void
.end method

.method private inicializarDemasElementos()V
    .locals 2

    const v0, 0x7f0a001c

    .line 331
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 332
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v1, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setSesionText(Landroid/widget/TextView;)V

    const v0, 0x7f0a00ec

    .line 333
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 334
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v1, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setSesionText(Landroid/widget/TextView;)V

    const v0, 0x7f0a024d

    .line 335
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->TVNacimientotext:Landroid/widget/TextView;

    .line 336
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v1, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setSesionText(Landroid/widget/TextView;)V

    const v0, 0x7f0a024f

    .line 337
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 338
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v1, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setSesionText(Landroid/widget/TextView;)V

    const v0, 0x7f0a024e

    .line 339
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 340
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v1, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setSesionText(Landroid/widget/TextView;)V

    const v0, 0x7f0a0082

    .line 341
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 342
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v1, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setSesionText(Landroid/widget/TextView;)V

    return-void
.end method

.method private inicializarFecha()V
    .locals 5

    const v0, 0x7f0a00ea

    .line 253
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->TVNacimiento:Landroid/widget/TextView;

    .line 254
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 255
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 256
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    .line 257
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    sget-object v1, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v2, "nacimiento"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    sget-object v1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->TVNacimiento:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    sget-object v0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->TVNacimiento:Landroid/widget/TextView;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/SesionActivity$1;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/SesionActivity$1;-><init>(Lsoft/evm/amblyopiamobilegames/SesionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->TVNacimiento:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setSesionText(Landroid/widget/TextView;)V

    return-void
.end method

.method private inicializarGeneros()V
    .locals 5

    const v0, 0x7f0a01c0

    .line 314
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    sput-object v0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->RbMale:Landroid/widget/RadioButton;

    const v0, 0x7f0a01bf

    .line 315
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    sput-object v0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->RbFemale:Landroid/widget/RadioButton;

    .line 316
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->RbMale:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setRadioButtonM(Landroid/widget/RadioButton;)V

    .line 317
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->RbFemale:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setRadioButtonF(Landroid/widget/RadioButton;)V

    .line 318
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "genero"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 325
    :pswitch_0
    sget-object v0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->RbFemale:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 322
    :pswitch_1
    sget-object v0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->RbMale:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x46 -> :sswitch_1
        0x4d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private inicializarPaises()V
    .locals 1

    const v0, 0x7f0a0018

    .line 287
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    sput-object v0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->SPcountryList:Landroid/widget/Spinner;

    .line 288
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->inicializarlista()V

    return-void
.end method

.method private inicializarUsername()V
    .locals 3

    const v0, 0x7f0a00eb

    .line 242
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    .line 243
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "nombre"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "correo"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "@"

    .line 246
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 248
    :cond_0
    sget-object v1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setSesionText(Landroid/widget/TextView;)V

    return-void
.end method

.method private inicializarlista()V
    .locals 6

    .line 292
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 296
    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 298
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 300
    :cond_1
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 301
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0d008f

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    sput-object v0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 302
    sget-object v1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->SPcountryList:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 303
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pais"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    sget-object v1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 306
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    .line 307
    sget-object v1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 309
    :cond_2
    sget-object v1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->SPcountryList:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    const v0, 0x7f0a0018

    .line 310
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    sput-object v0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->SPcountryList:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public cerrarSesion(Landroid/view/View;)V
    .locals 2

    .line 427
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x108009b

    .line 429
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110072

    .line 431
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lsoft/evm/amblyopiamobilegames/SesionActivity$4;

    invoke-direct {v0, p0}, Lsoft/evm/amblyopiamobilegames/SesionActivity$4;-><init>(Lsoft/evm/amblyopiamobilegames/SesionActivity;)V

    const v1, 0x7f11018a

    .line 433
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lsoft/evm/amblyopiamobilegames/SesionActivity$3;

    invoke-direct {v0, p0}, Lsoft/evm/amblyopiamobilegames/SesionActivity$3;-><init>(Lsoft/evm/amblyopiamobilegames/SesionActivity;)V

    const v1, 0x7f11014a

    .line 441
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 446
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public finish()V
    .locals 3

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 96
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->actualizar:Z

    if-eqz v0, :cond_0

    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "nombre"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->actualizar:Z

    return-void
.end method

.method public go_back(Landroid/view/View;)V
    .locals 0

    .line 502
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 104
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->requestWindowFeature(I)Z

    .line 105
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 108
    new-instance p1, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;

    invoke-direct {p1, p0, p0}, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;-><init>(Lsoft/evm/amblyopiamobilegames/SesionActivity;Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/SesionActivity$iniciarActividad;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public update(Landroid/view/View;)V
    .locals 9

    .line 352
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->TVemail:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 353
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f110147

    .line 354
    invoke-virtual {p0, v3}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 355
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lsoft/evm/amblyopiamobilegames/SesionActivity$2;

    invoke-direct {v4, p0}, Lsoft/evm/amblyopiamobilegames/SesionActivity$2;-><init>(Lsoft/evm/amblyopiamobilegames/SesionActivity;)V

    const-string v5, "OK"

    .line 356
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 361
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 362
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    .line 365
    :goto_0
    sget-object v3, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "@"

    const v5, 0x7f1100a8

    if-eqz v3, :cond_1

    .line 366
    sget-object p1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    invoke-virtual {p0, v5}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 367
    sget-object p1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    :goto_1
    move-object v3, p1

    move p1, v2

    goto/16 :goto_4

    .line 370
    :cond_1
    sget-object v3, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "[A-Za-z\u00c0-\u00d6\u00d8-\u00f6\u00f8-\u00ff0-9-\u51fa\u6cb9(\\\\d+)\u5428 ]{1,32}"

    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    const-string v6, "Only letters and numbers. No alphanumeric."

    if-nez v3, :cond_2

    .line 371
    sget-object p1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 372
    sget-object p1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    invoke-virtual {p1, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 373
    sget-object p1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    goto :goto_1

    .line 376
    :cond_2
    sget-object v3, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "*"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "("

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "\'"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "\""

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    .line 382
    :cond_3
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->TVemail:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 383
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->TVemail:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 384
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->TVemail:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 387
    :cond_4
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->TVemail:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    const/4 v5, 0x4

    if-lt v3, v5, :cond_6

    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->TVemail:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    .line 388
    :cond_6
    :goto_2
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->TVemail:Landroid/widget/TextView;

    const v3, 0x7f1100aa

    invoke-virtual {p0, v3}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 389
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->TVemail:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 377
    :cond_7
    :goto_3
    sget-object p1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 378
    sget-object p1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    invoke-virtual {p1, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 379
    sget-object p1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    goto/16 :goto_1

    :goto_4
    if-eqz p1, :cond_8

    .line 394
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    .line 397
    :cond_8
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/SesionActivity;->TVemail:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 398
    sget-object v5, Lsoft/evm/amblyopiamobilegames/SesionActivity;->ETusername:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 399
    sget-object v6, Lsoft/evm/amblyopiamobilegames/SesionActivity;->TVNacimiento:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 402
    :try_start_0
    sget-object v7, Lsoft/evm/amblyopiamobilegames/SesionActivity;->SPcountryList:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 404
    :catch_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v7

    .line 407
    :goto_5
    sget-object v8, Lsoft/evm/amblyopiamobilegames/SesionActivity;->RbFemale:Landroid/widget/RadioButton;

    invoke-virtual {v8}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "F"

    goto :goto_6

    :cond_9
    const-string v8, "M"

    .line 409
    :goto_6
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 410
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 412
    :cond_a
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "correo"

    .line 413
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "nombre"

    .line 414
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "nacimiento"

    .line 415
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pais"

    .line 416
    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "genero"

    .line 417
    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 418
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 419
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/SesionActivity;->finish()V

    :goto_7
    xor-int/2addr p1, v2

    .line 421
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/SesionActivity;->actualizar:Z

    if-eqz p1, :cond_b

    .line 423
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/MainActivity;->setUltimaVez()Ljava/lang/String;

    :cond_b
    return-void
.end method
