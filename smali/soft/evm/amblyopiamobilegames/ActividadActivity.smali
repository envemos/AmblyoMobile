.class public Lsoft/evm/amblyopiamobilegames/ActividadActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActividadActivity.java"

# interfaces
.implements Lcom/applandeo/materialcalendarview/listeners/OnSelectDateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static TVBreaker:Landroid/widget/TextView; = null

.field static TVBreakerTime:Landroid/widget/TextView; = null

.field static TVComprueba:Landroid/widget/TextView; = null

.field static TVDias:Landroid/widget/TextView; = null

.field static TVDiasTotal:Landroid/widget/TextView; = null

.field static TVFlappyTime:Landroid/widget/TextView; = null

.field static TVHistorial:Landroid/widget/TextView; = null

.field static TVPacman:Landroid/widget/TextView; = null

.field static TVPacmanTime:Landroid/widget/TextView; = null

.field static TVPinball:Landroid/widget/TextView; = null

.field static TVPinballTime:Landroid/widget/TextView; = null

.field static TVPong:Landroid/widget/TextView; = null

.field static TVPongTime:Landroid/widget/TextView; = null

.field static TVSnake:Landroid/widget/TextView; = null

.field static TVSnakeTime:Landroid/widget/TextView; = null

.field static TVSpace:Landroid/widget/TextView; = null

.field static TVSpaceTime:Landroid/widget/TextView; = null

.field static TVTetris:Landroid/widget/TextView; = null

.field static TVTetrisTime:Landroid/widget/TextView; = null

.field static TVUltimosDias:Landroid/widget/TextView; = null

.field static TVjugadas:Landroid/widget/TextView; = null

.field static TVjugadasTiempo:Landroid/widget/TextView; = null

.field static TVmedio:Landroid/widget/TextView; = null

.field static TVmedioTiempo:Landroid/widget/TextView; = null

.field static TVmiActividad:Landroid/widget/TextView; = null

.field static TVtotal:Landroid/widget/TextView; = null

.field static TVtotalTiempo:Landroid/widget/TextView; = null

.field static TvFlappy:Landroid/widget/TextView; = null

.field public static actividad:Z = false

.field public static dias:I = 0x0

.field static editTextNumber:Landroid/widget/EditText; = null

.field static estad:Landroid/content/SharedPreferences; = null

.field public static m:J = 0x0L

.field public static final milis_dia:I = 0x5265c00

.field static user:Landroid/content/SharedPreferences;


# instance fields
.field calendarView:Lcom/applandeo/materialcalendarview/CalendarView;

.field selectedDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lsoft/evm/amblyopiamobilegames/ActividadActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->inicializarSharedPreferences()V

    return-void
.end method

.method static synthetic access$100(Lsoft/evm/amblyopiamobilegames/ActividadActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->consultarDatos()V

    return-void
.end method

.method static synthetic access$200(Lsoft/evm/amblyopiamobilegames/ActividadActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->inicializarComponentes()V

    return-void
.end method

.method static synthetic access$300(Lsoft/evm/amblyopiamobilegames/ActividadActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->inicializarEstadisticas()V

    return-void
.end method

.method static synthetic access$400(Lsoft/evm/amblyopiamobilegames/ActividadActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->inicializarCalendario()V

    return-void
.end method

.method private calcular(I)V
    .locals 8

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1101aa

    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->editTextNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f11009b

    invoke-virtual {p0, v2}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    const p1, 0x7f1100c2

    .line 252
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    move v1, v0

    goto :goto_1

    .line 253
    :cond_0
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->setMaxDias()I

    move-result v3

    const-string v4, ")"

    const-string v5, " ("

    const v6, 0x7f1101a7

    if-lt p1, v3, :cond_1

    .line 254
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->setMaxDias()I

    move-result p1

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v2}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 257
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v2}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v7, v1

    move v1, p1

    move-object p1, v7

    .line 259
    :goto_1
    sget-object v2, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->editTextNumber:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 260
    sget-object v2, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVUltimosDias:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    .line 262
    rem-long v4, v2, v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x15180

    sub-int/2addr v1, v0

    int-to-long v0, v1

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    sub-long/2addr v2, v0

    .line 264
    :try_start_0
    sget-object p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->estad:Landroid/content/SharedPreferences;

    sget-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->user:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIA >= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lsoft/evm/amblyopiamobilegames/sesion/Estadisticas;->update(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 266
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private consultarDatos()V
    .locals 8

    .line 318
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->partidasDBHelper_historial:Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 319
    sget-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->user:Landroid/content/SharedPreferences;

    const-string v2, "correo"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "SELECT DIA FROM HISTORIAL WHERE CORREO=? ORDER BY DIA"

    .line 320
    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 321
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->selectedDays:Ljava/util/List;

    .line 322
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    :cond_0
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 325
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 326
    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 327
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    .line 328
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v2

    const/4 v7, 0x5

    .line 329
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 330
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    sub-int/2addr v6, v2

    .line 331
    invoke-virtual {v7, v5, v6, v3}, Ljava/util/Calendar;->set(III)V

    .line 332
    iget-object v3, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->selectedDays:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 335
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 336
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method private inicializarCalendario()V
    .locals 2

    const v0, 0x7f0a008e

    .line 340
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/applandeo/materialcalendarview/CalendarView;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->calendarView:Lcom/applandeo/materialcalendarview/CalendarView;

    .line 341
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->selectedDays:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/applandeo/materialcalendarview/CalendarView;->setSelectedDates(Ljava/util/List;)V

    .line 343
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->calendarView:Lcom/applandeo/materialcalendarview/CalendarView;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity$$ExternalSyntheticLambda0;-><init>(Lsoft/evm/amblyopiamobilegames/ActividadActivity;)V

    invoke-virtual {v0, v1}, Lcom/applandeo/materialcalendarview/CalendarView;->setOnDayClickListener(Lcom/applandeo/materialcalendarview/listeners/OnDayClickListener;)V

    return-void
.end method

.method private inicializarComponentes()V
    .locals 4

    .line 165
    new-instance v0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0240

    .line 166
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVmiActividad:Landroid/widget/TextView;

    .line 167
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTitle(Landroid/widget/TextView;)V

    const v1, 0x7f0a0248

    .line 168
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVtotal:Landroid/widget/TextView;

    .line 169
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityText(Landroid/widget/TextView;)V

    const v1, 0x7f0a0244

    .line 170
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVmedio:Landroid/widget/TextView;

    .line 171
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityText(Landroid/widget/TextView;)V

    const v1, 0x7f0a0243

    .line 172
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVjugadas:Landroid/widget/TextView;

    .line 173
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityText(Landroid/widget/TextView;)V

    const v1, 0x7f0a0247

    .line 174
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVtotalTiempo:Landroid/widget/TextView;

    .line 175
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContent(Landroid/widget/TextView;)V

    const v1, 0x7f0a0246

    .line 176
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVmedioTiempo:Landroid/widget/TextView;

    .line 177
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContent(Landroid/widget/TextView;)V

    const v1, 0x7f0a0245

    .line 178
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVjugadasTiempo:Landroid/widget/TextView;

    .line 179
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContent(Landroid/widget/TextView;)V

    const v1, 0x7f0a00ed

    .line 180
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->editTextNumber:Landroid/widget/EditText;

    const-string v2, ""

    .line 181
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0264

    .line 182
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVUltimosDias:Landroid/widget/TextView;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1101aa

    invoke-virtual {p0, v2}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->setMaxDias()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f11009b

    invoke-virtual {p0, v2}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    sget-object v2, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVUltimosDias:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    sget-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVUltimosDias:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContent(Landroid/widget/TextView;)V

    const v1, 0x7f0a01fc

    .line 186
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVSnake:Landroid/widget/TextView;

    .line 187
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContentBold(Landroid/widget/TextView;)V

    const v1, 0x7f0a0233

    .line 188
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVTetris:Landroid/widget/TextView;

    .line 189
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContentBold(Landroid/widget/TextView;)V

    const v1, 0x7f0a0106

    .line 190
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TvFlappy:Landroid/widget/TextView;

    .line 191
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContentBold(Landroid/widget/TextView;)V

    const v1, 0x7f0a0071

    .line 192
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVBreaker:Landroid/widget/TextView;

    .line 193
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContentBold(Landroid/widget/TextView;)V

    const v1, 0x7f0a0203

    .line 194
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVSpace:Landroid/widget/TextView;

    .line 195
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContentBold(Landroid/widget/TextView;)V

    const v1, 0x7f0a01b3

    .line 196
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVPong:Landroid/widget/TextView;

    .line 197
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContentBold(Landroid/widget/TextView;)V

    const v1, 0x7f0a01a0

    .line 198
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVPacman:Landroid/widget/TextView;

    .line 199
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContentBold(Landroid/widget/TextView;)V

    const v1, 0x7f0a01af

    .line 200
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVPinball:Landroid/widget/TextView;

    .line 201
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContentBold(Landroid/widget/TextView;)V

    const v1, 0x7f0a0200

    .line 202
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVSnakeTime:Landroid/widget/TextView;

    .line 203
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContent(Landroid/widget/TextView;)V

    const v1, 0x7f0a0236

    .line 204
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVTetrisTime:Landroid/widget/TextView;

    .line 205
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContent(Landroid/widget/TextView;)V

    const v1, 0x7f0a010a

    .line 206
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVFlappyTime:Landroid/widget/TextView;

    .line 207
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContent(Landroid/widget/TextView;)V

    const v1, 0x7f0a0074

    .line 208
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVBreakerTime:Landroid/widget/TextView;

    .line 209
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContent(Landroid/widget/TextView;)V

    const v1, 0x7f0a0206

    .line 210
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVSpaceTime:Landroid/widget/TextView;

    .line 211
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContent(Landroid/widget/TextView;)V

    const v1, 0x7f0a01b6

    .line 212
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVPongTime:Landroid/widget/TextView;

    .line 213
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContent(Landroid/widget/TextView;)V

    const v1, 0x7f0a01a3

    .line 214
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVPacmanTime:Landroid/widget/TextView;

    .line 215
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContent(Landroid/widget/TextView;)V

    const v1, 0x7f0a01b2

    .line 216
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVPinballTime:Landroid/widget/TextView;

    .line 217
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContent(Landroid/widget/TextView;)V

    const v1, 0x7f0a00b6

    .line 218
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVComprueba:Landroid/widget/TextView;

    .line 219
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContentBold(Landroid/widget/TextView;)V

    const v1, 0x7f0a025e

    .line 220
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVHistorial:Landroid/widget/TextView;

    .line 221
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContentBold(Landroid/widget/TextView;)V

    const v1, 0x7f0a0241

    .line 222
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVDias:Landroid/widget/TextView;

    .line 223
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityText(Landroid/widget/TextView;)V

    const v1, 0x7f0a0242

    .line 224
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVDiasTotal:Landroid/widget/TextView;

    .line 225
    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityTextContent(Landroid/widget/TextView;)V

    return-void
.end method

.method private inicializarEstadisticas()V
    .locals 1

    .line 313
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->iniciarDias()V

    .line 314
    sget v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->dias:I

    invoke-direct {p0, v0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->calcular(I)V

    return-void
.end method

.method private inicializarSharedPreferences()V
    .locals 2

    const-string v0, "Estadisticas"

    const/4 v1, 0x0

    .line 160
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->estad:Landroid/content/SharedPreferences;

    const-string v0, "Usuario"

    .line 161
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->user:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static iniciarDias()V
    .locals 6

    .line 294
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "inicio"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 296
    sput v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->dias:I

    goto :goto_0

    .line 299
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 300
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd hh:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 301
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    .line 305
    div-long/2addr v1, v3

    long-to-int v0, v1

    sput v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->dias:I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 307
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static insertarPuntuaciones()V
    .locals 9

    .line 513
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->partidasDBHelper_ranking:Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperRanking;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperRanking;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "RANKING"

    const/4 v2, 0x0

    .line 515
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 516
    sget-object v3, Lsoft/evm/amblyopiamobilegames/MainActivity;->partidasDBHelper_historial:Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial;

    invoke-virtual {v3}, Lsoft/evm/amblyopiamobilegames/dal/PartidasDBHelperHistorial;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 517
    sget-object v6, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    sget-object v7, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->correo:Ljava/lang/String;

    const-string v8, "correo"

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    aput-object v6, v4, v5

    const-string v5, "SELECT * FROM HISTORIAL WHERE CORREO = ? AND JUEGO LIKE ? ORDER BY S1 DESC LIMIT 100"

    invoke-virtual {v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 518
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 520
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 522
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 523
    invoke-static {v3, v5}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 524
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 527
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 528
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 529
    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static pintar()V
    .locals 6

    .line 68
    sget-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVtotalTiempo:Landroid/widget/TextView;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->estad:Landroid/content/SharedPreferences;

    const-string v2, "total"

    const-string v3, "00:00:00"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    sget-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVmedioTiempo:Landroid/widget/TextView;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->estad:Landroid/content/SharedPreferences;

    const-string v2, "medio"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    sget-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVjugadasTiempo:Landroid/widget/TextView;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->estad:Landroid/content/SharedPreferences;

    const-string v2, "jugadas"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    sget-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVSnakeTime:Landroid/widget/TextView;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->estad:Landroid/content/SharedPreferences;

    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->snake:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    sget-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVTetrisTime:Landroid/widget/TextView;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->estad:Landroid/content/SharedPreferences;

    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->tetris:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    sget-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVFlappyTime:Landroid/widget/TextView;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->estad:Landroid/content/SharedPreferences;

    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->flappy:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    sget-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVBreakerTime:Landroid/widget/TextView;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->estad:Landroid/content/SharedPreferences;

    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->breaker:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    sget-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVSpaceTime:Landroid/widget/TextView;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->estad:Landroid/content/SharedPreferences;

    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->space:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    sget-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVPongTime:Landroid/widget/TextView;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->estad:Landroid/content/SharedPreferences;

    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->pong:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    sget-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVPacmanTime:Landroid/widget/TextView;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->estad:Landroid/content/SharedPreferences;

    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->pacman:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    sget-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVPinballTime:Landroid/widget/TextView;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->estad:Landroid/content/SharedPreferences;

    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->pinball:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    sget-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->TVDiasTotal:Landroid/widget/TextView;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->estad:Landroid/content/SharedPreferences;

    const-string v2, "d\u00edas"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setMaxDias()I
    .locals 8

    const-string v0, "Usuario"

    const/4 v1, 0x0

    .line 271
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->user:Landroid/content/SharedPreferences;

    const-string v2, "registro"

    const-string v3, ""

    .line 272
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 277
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 278
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd hh:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 280
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    .line 284
    rem-long v6, v2, v4

    sub-long/2addr v2, v6

    .line 285
    div-long/2addr v2, v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v2

    return v0

    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    return v1
.end method

.method private setSelectedDays()V
    .locals 2

    .line 360
    :try_start_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->calendarView:Lcom/applandeo/materialcalendarview/CalendarView;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->selectedDays:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/applandeo/materialcalendarview/CalendarView;->setSelectedDates(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public establecerDias(Landroid/view/View;)V
    .locals 1

    .line 231
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->editTextNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 233
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 p1, 0x0

    .line 235
    :goto_0
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->calcular(I)V

    return-void
.end method

.method public establecerHoy(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 240
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->calcular(I)V

    return-void
.end method

.method public establecerTotal(Landroid/view/View;)V
    .locals 0

    .line 244
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->setMaxDias()I

    move-result p1

    .line 245
    invoke-direct {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->calcular(I)V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 98
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    const/4 v0, 0x0

    .line 99
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    return-void
.end method

.method public go_back(Landroid/view/View;)V
    .locals 0

    .line 534
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->finish()V

    return-void
.end method

.method public iniciarHistorial()V
    .locals 3

    const-string v0, "Usuario"

    const/4 v1, 0x0

    .line 367
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "correo"

    const-string v2, ""

    .line 368
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "usuario"

    .line 370
    sput-object v0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->tabla:Ljava/lang/String;

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public iniciarPuntuacionesBreaker(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 468
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    .line 469
    sget-object p1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->breaker:Ljava/lang/String;

    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    const-string p1, "Breaker"

    .line 470
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 471
    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 472
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 473
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public iniciarPuntuacionesFlappy(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 459
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    .line 460
    sget-object p1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->flappy:Ljava/lang/String;

    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    const-string p1, "Flappy"

    .line 461
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 462
    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 463
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public iniciarPuntuacionesPacman(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 495
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    .line 496
    sget-object p1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->pacman:Ljava/lang/String;

    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    const-string p1, "PacMan"

    .line 497
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    const-string p1, "Pacman"

    .line 498
    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 499
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 500
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public iniciarPuntuacionesPinball(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 504
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    .line 505
    sget-object p1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->pinball:Ljava/lang/String;

    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    const-string p1, "Pinball"

    .line 506
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 507
    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 508
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 509
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public iniciarPuntuacionesPong(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 486
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    .line 487
    sget-object p1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->pong:Ljava/lang/String;

    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    const-string p1, "Pong"

    .line 488
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 489
    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 490
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 491
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public iniciarPuntuacionesSnake(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    .line 441
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    .line 442
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->snake:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    const-string p1, "Snake"

    .line 443
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 444
    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 445
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public iniciarPuntuacionesSpace(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 477
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    .line 478
    sget-object p1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->space:Ljava/lang/String;

    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    const-string p1, "Space Invaders"

    .line 479
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    const-string p1, "Space"

    .line 480
    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 481
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 482
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public iniciarPuntuacionesTetris(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 450
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    .line 451
    sget-object p1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->tetris:Ljava/lang/String;

    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    const-string p1, "Tetris"

    .line 452
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 453
    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 454
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 455
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public iniciarRankingBreaker(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 401
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    const-string p1, "Breaker"

    .line 402
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 403
    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 404
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 405
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public iniciarRankingFlappy(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 393
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    const-string p1, "Flappy"

    .line 394
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 395
    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 396
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public iniciarRankingPacman(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 425
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    const-string p1, "PacMan"

    .line 426
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    const-string p1, "Pacman"

    .line 427
    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 428
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 429
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public iniciarRankingPinball(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 433
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    const-string p1, "Pinball"

    .line 434
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 435
    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 436
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public iniciarRankingPong(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 417
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    const-string p1, "Pong"

    .line 418
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 419
    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 420
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public iniciarRankingSnake(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 377
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    const-string p1, "Snake"

    .line 378
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 379
    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 380
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public iniciarRankingSpace(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 409
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    const-string p1, "Space Invaders"

    .line 410
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    const-string p1, "Space"

    .line 411
    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 412
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 413
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public iniciarRankingTetris(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    .line 385
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    const-string p1, "Tetris"

    .line 386
    sput-object p1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    .line 387
    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 388
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$inicializarCalendario$0$soft-evm-amblyopiamobilegames-ActividadActivity(Lcom/applandeo/materialcalendarview/EventDay;)V
    .locals 4

    .line 344
    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/EventDay;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    .line 345
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->calendarView:Lcom/applandeo/materialcalendarview/CalendarView;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/CalendarView;->getSelectedDates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sput-wide v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->m:J

    .line 347
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SELECT * FROM HISTORIAL WHERE DIA BETWEEN "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-wide v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->m:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-wide v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->m:J

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " AND CORREO = \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "correo"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' ORDER BY DIA DESC"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lsoft/evm/amblyopiamobilegames/table/Partidas;->sql_historial:Ljava/lang/String;

    .line 349
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->iniciarHistorial()V

    .line 350
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->setSelectedDays()V

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 87
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->requestWindowFeature(I)Z

    .line 88
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 91
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    .line 93
    new-instance p1, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;

    invoke-direct {p1, p0, p0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;-><init>(Lsoft/evm/amblyopiamobilegames/ActividadActivity;Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity$iniciarActividad;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 544
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 545
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->setSelectedDays()V

    return-void
.end method

.method public onSelect(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
