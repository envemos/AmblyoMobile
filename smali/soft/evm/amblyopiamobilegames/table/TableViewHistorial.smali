.class public Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TableViewHistorial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$LoadDataTask;
    }
.end annotation


# instance fields
.field data:[Lsoft/evm/amblyopiamobilegames/table/PartidaData;

.field element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

.field private guardarConsulta:Ljava/lang/String;

.field private mTableLayout:Landroid/widget/TableLayout;

.field partidas:Lsoft/evm/amblyopiamobilegames/table/Partidas;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private ultimaConsulta:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->ultimaConsulta:Ljava/lang/String;

    .line 44
    new-instance v0, Lsoft/evm/amblyopiamobilegames/table/Partidas;

    invoke-direct {v0}, Lsoft/evm/amblyopiamobilegames/table/Partidas;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->partidas:Lsoft/evm/amblyopiamobilegames/table/Partidas;

    return-void
.end method

.method static synthetic access$000(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->guardarConsulta:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->guardarConsulta:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->ultimaConsulta:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->ultimaConsulta:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;)Landroid/app/ProgressDialog;
    .locals 0

    .line 37
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method


# virtual methods
.method public loadData()V
    .locals 23

    move-object/from16 v0, p0

    .line 88
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->partidas:Lsoft/evm/amblyopiamobilegames/table/Partidas;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/table/Partidas;->getPartidasHistorial()[Lsoft/evm/amblyopiamobilegames/table/PartidaData;

    move-result-object v1

    iput-object v1, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->data:[Lsoft/evm/amblyopiamobilegames/table/PartidaData;

    .line 96
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 97
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 98
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 102
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "dd/MM/yyyy\nHH:mm:ss"

    invoke-direct {v4, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 104
    iget-object v5, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->data:[Lsoft/evm/amblyopiamobilegames/table/PartidaData;

    array-length v5, v5

    const-string v6, "Usuario"

    const/4 v7, 0x0

    .line 106
    invoke-virtual {v0, v6, v7}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v8, "nombre"

    const-string v9, "(not register)"

    .line 107
    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 108
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v11, 0x7f11017f

    invoke-virtual {v0, v11}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v8, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v8}, Landroid/widget/TableLayout;->removeAllViews()V

    const/4 v8, -0x1

    move v9, v8

    :goto_0
    if-ge v9, v5, :cond_16

    const/4 v11, 0x0

    if-le v9, v8, :cond_0

    .line 118
    iget-object v11, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->data:[Lsoft/evm/amblyopiamobilegames/table/PartidaData;

    aget-object v11, v11, v9

    goto :goto_1

    .line 120
    :cond_0
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v13, ""

    .line 121
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :goto_1
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v13, -0x2

    if-ne v9, v8, :cond_1

    .line 127
    new-instance v14, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v14, v8, v13}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v14, v2

    .line 129
    invoke-virtual {v12, v7, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    .line 131
    :cond_1
    new-instance v14, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v14, v13, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v14, v1

    .line 133
    invoke-virtual {v12, v7, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_2
    const/16 v14, 0x14

    .line 135
    invoke-virtual {v12, v14, v14, v14, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v15, "#000000"

    const-string v16, "#ffffff"

    const/high16 v14, 0x7f060000

    if-ne v9, v8, :cond_2

    .line 138
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v13, 0x7f060040

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float v8, v3

    .line 140
    invoke-virtual {v12, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const v8, 0x7f1100af

    .line 141
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(I)V

    .line 142
    new-instance v8, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$1;

    invoke-direct {v8, v0, v6}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$1;-><init>(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;Landroid/content/SharedPreferences;)V

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v8, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v8, v12}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTableTitle(Landroid/widget/TextView;)V

    goto :goto_3

    .line 163
    :cond_2
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 164
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-wide v7, v11, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->fecha:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v7, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v7, v12}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTableContent(Landroid/widget/TextView;)V

    .line 171
    :goto_3
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 172
    new-instance v8, Landroid/widget/TableRow$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v8, v13, v13}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x3

    .line 175
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v13, 0x14

    .line 177
    invoke-virtual {v7, v13, v13, v13, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v8, 0x7f060001

    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    new-instance v13, Landroid/widget/TableRow$LayoutParams;

    const/4 v8, -0x1

    const/4 v14, -0x2

    invoke-direct {v13, v14, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v14, v1

    const/4 v13, 0x0

    .line 182
    invoke-virtual {v7, v13, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v17, "#f0f0f0"

    if-ne v9, v8, :cond_3

    int-to-float v8, v3

    .line 185
    invoke-virtual {v7, v13, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const v8, 0x7f1100cb

    .line 186
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 187
    new-instance v8, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$2;

    invoke-direct {v8, v0, v6}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$2;-><init>(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;Landroid/content/SharedPreferences;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v8, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v8, v7}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTableTitle(Landroid/widget/TextView;)V

    goto :goto_5

    .line 207
    :cond_3
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v13, 0x7f060001

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    iget-object v8, v11, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->juego:Ljava/lang/String;

    sget-object v13, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->snake:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 210
    sget-object v8, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->snake:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 212
    :cond_4
    iget-object v8, v11, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->juego:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const/4 v8, 0x0

    .line 213
    invoke-virtual {v7, v8, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 214
    iget-object v8, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v8, v7}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTableContent(Landroid/widget/TextView;)V

    .line 217
    :goto_5
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x1

    .line 218
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v18, "#f8f8f8"

    .line 220
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 222
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move/from16 v19, v1

    const/4 v1, -0x1

    if-ne v9, v1, :cond_5

    move-object/from16 v20, v4

    .line 224
    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v4, v2

    const/4 v1, 0x0

    .line 227
    invoke-virtual {v13, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, -0x1

    goto :goto_6

    :cond_5
    move-object/from16 v20, v4

    const/4 v1, 0x0

    .line 229
    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v4, v1, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    .line 232
    invoke-virtual {v13, v4, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_6
    const/16 v4, 0x30

    .line 235
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v4, 0x14

    .line 237
    invoke-virtual {v13, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    move/from16 v21, v5

    const/16 v5, 0xa

    if-ne v9, v1, :cond_6

    .line 241
    invoke-virtual {v13, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const v1, 0x7f110173

    .line 242
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(I)V

    .line 243
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f060042

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v4, 0x7f060000

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float v1, v3

    const/4 v4, 0x0

    .line 246
    invoke-virtual {v13, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 247
    new-instance v1, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$3;

    invoke-direct {v1, v0, v6}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$3;-><init>(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;Landroid/content/SharedPreferences;)V

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v1, v13}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTableTitle(Landroid/widget/TextView;)V

    goto :goto_7

    :cond_6
    const/4 v4, 0x0

    .line 271
    invoke-virtual {v13, v5, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 272
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 273
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float v1, v2

    .line 274
    invoke-virtual {v13, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 275
    iget v4, v11, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s1:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v4, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v4, v13}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTableContent(Landroid/widget/TextView;)V

    .line 278
    :goto_7
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v13, 0x5

    const/4 v1, -0x1

    if-le v9, v1, :cond_11

    .line 282
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 283
    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x0

    .line 287
    invoke-virtual {v1, v4, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v5, 0xa

    .line 288
    invoke-virtual {v1, v5, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v5, "#aaaaaa"

    .line 289
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 291
    iget-object v5, v11, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->juego:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :goto_8
    const/4 v4, -0x1

    goto/16 :goto_9

    :sswitch_0
    const-string v4, "FLAPPY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_8

    :cond_7
    const/16 v4, 0x8

    goto/16 :goto_9

    :sswitch_1
    const-string v4, "BREAKER"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_8

    :cond_8
    const/4 v4, 0x7

    goto :goto_9

    :sswitch_2
    const-string v4, "PINBALL"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_8

    :cond_9
    const/4 v4, 0x6

    goto :goto_9

    :sswitch_3
    const-string v4, "SPACE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_8

    :cond_a
    move v4, v13

    goto :goto_9

    :sswitch_4
    const-string v4, "PONG"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_8

    :cond_b
    const/4 v4, 0x4

    goto :goto_9

    :sswitch_5
    const-string v4, "SNAKE (CON MUROS)"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_8

    :cond_c
    const/4 v4, 0x3

    goto :goto_9

    :sswitch_6
    const-string v4, "SNAKE (SIN MUROS)"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_8

    :cond_d
    const/4 v4, 0x2

    goto :goto_9

    :sswitch_7
    const-string v4, "TETRIS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_8

    :cond_e
    const/4 v4, 0x1

    goto :goto_9

    :sswitch_8
    const-string v4, "PACMAN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_8

    :cond_f
    const/4 v4, 0x0

    :goto_9
    const-string v5, ": "

    const-string v13, "\n"

    move-object/from16 v22, v7

    const v7, 0x7f1100d1

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_b

    .line 304
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f110181

    invoke-virtual {v0, v5}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 307
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 325
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 311
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f110157

    invoke-virtual {v0, v5}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 315
    :pswitch_4
    iget v4, v11, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "normal"

    goto :goto_a

    :cond_10
    const-string v4, "imposible"

    .line 319
    :goto_a
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 296
    :pswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f11007b

    invoke-virtual {v0, v7}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v11, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v7, 0x7f110143

    invoke-virtual {v0, v7}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f11018a

    invoke-virtual {v0, v5}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 293
    :pswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f11007b

    invoke-virtual {v0, v7}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v11, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v7, 0x7f110143

    invoke-virtual {v0, v7}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f11014a

    invoke-virtual {v0, v5}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 301
    :pswitch_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f1100d4

    invoke-virtual {v0, v5}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 322
    :pswitch_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v11, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :goto_b
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 330
    iget-object v4, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v4, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTableContent(Landroid/widget/TextView;)V

    goto :goto_c

    :cond_11
    move-object/from16 v22, v7

    .line 333
    :goto_c
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 334
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x5

    .line 335
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 337
    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "#f7f7f7"

    if-ne v9, v5, :cond_12

    .line 344
    new-instance v13, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v13, v5, v5}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    move-object/from16 v18, v10

    goto :goto_d

    .line 349
    :cond_12
    new-instance v13, Landroid/widget/TableRow$LayoutParams;

    move-object/from16 v18, v10

    const/4 v10, -0x2

    invoke-direct {v13, v5, v10}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_d
    const/16 v10, 0x14

    .line 355
    invoke-virtual {v4, v10, v10, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v13, 0x3

    .line 357
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setGravity(I)V

    if-ne v9, v5, :cond_13

    const v5, 0x7f11019a

    .line 360
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 361
    invoke-virtual {v4, v10, v10, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 362
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    int-to-float v5, v2

    const/4 v7, 0x0

    .line 363
    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f06003e

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 365
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v10, 0x7f060000

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float v5, v3

    .line 366
    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 367
    new-instance v5, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$4;

    invoke-direct {v5, v0, v6}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$4;-><init>(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;Landroid/content/SharedPreferences;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v5, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v5, v4}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTableTitle(Landroid/widget/TextView;)V

    goto :goto_e

    :cond_13
    const/16 v5, 0xa

    const/4 v7, 0x0

    .line 387
    invoke-virtual {v4, v5, v5, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 388
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 389
    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 390
    iget-wide v10, v11, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->tiempo:J

    invoke-static {v10, v11}, Lsoft/evm/amblyopiamobilegames/MainActivity;->formatearMilis(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    invoke-virtual {v4, v7, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 392
    iget-object v7, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v7, v4}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTableContent(Landroid/widget/TextView;)V

    .line 395
    :goto_e
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 398
    new-instance v4, Landroid/widget/TableRow;

    invoke-direct {v4, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    add-int/lit8 v7, v9, 0x1

    .line 399
    invoke-virtual {v4, v7}, Landroid/widget/TableRow;->setId(I)V

    .line 400
    new-instance v10, Landroid/widget/TableLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v13, -0x1

    invoke-direct {v10, v13, v11}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x0

    .line 402
    invoke-virtual {v10, v5, v5, v5, v5}, Landroid/widget/TableLayout$LayoutParams;->setMargins(IIII)V

    .line 403
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 404
    invoke-virtual {v4, v10}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    invoke-virtual {v4, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    move-object/from16 v11, v22

    .line 409
    invoke-virtual {v4, v11}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 410
    invoke-virtual {v4, v8}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 411
    invoke-virtual {v4, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    if-le v9, v13, :cond_14

    .line 415
    new-instance v1, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$5;

    invoke-direct {v1, v0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$5;-><init>(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;)V

    invoke-virtual {v4, v1}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    :cond_14
    iget-object v1, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v1, v4, v10}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-le v9, v13, :cond_15

    .line 430
    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 431
    new-instance v4, Landroid/widget/TableLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v4, v13, v8}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x0

    .line 433
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/TableLayout$LayoutParams;->setMargins(IIII)V

    .line 435
    invoke-virtual {v1, v4}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 437
    new-instance v10, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v10, v13, v8}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/4 v8, 0x4

    .line 439
    iput v8, v10, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 440
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v8, "#d9d9d9"

    .line 441
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/4 v8, 0x1

    .line 442
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setHeight(I)V

    .line 444
    invoke-virtual {v1, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 445
    iget-object v8, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v8, v1, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    :cond_15
    const/4 v5, 0x0

    :goto_f
    move v9, v7

    move v8, v13

    move-object/from16 v10, v18

    move/from16 v1, v19

    move-object/from16 v4, v20

    move v7, v5

    move/from16 v5, v21

    goto/16 :goto_0

    :cond_16
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x73c8b878 -> :sswitch_8
        -0x6cb529e7 -> :sswitch_7
        -0x579a2d95 -> :sswitch_6
        -0x2296a57f -> :sswitch_5
        0x258ff8 -> :sswitch_4
        0x4b6f8e6 -> :sswitch_3
        0x8ee70f4 -> :sswitch_2
        0x3333adcc -> :sswitch_1
        0x7bc0f83e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 54
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->requestWindowFeature(I)Z

    .line 55
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f0d0091

    .line 58
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->setContentView(I)V

    .line 60
    new-instance v0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    .line 62
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->progressDialog:Landroid/app/ProgressDialog;

    const v0, 0x7f0a0221

    .line 65
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->mTableLayout:Landroid/widget/TableLayout;

    .line 67
    invoke-virtual {v0, p1}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    .line 69
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->startLoadData()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 485
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 486
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 84
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public startLoadData()V
    .locals 4

    .line 74
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 75
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f110070

    invoke-virtual {p0, v2}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 77
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 78
    new-instance v0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$LoadDataTask;

    invoke-direct {v0, p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$LoadDataTask;-><init>(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
