.class public Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TableViewRanking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;
    }
.end annotation


# instance fields
.field alertDialog:Landroid/app/AlertDialog;

.field data:[Lsoft/evm/amblyopiamobilegames/table/PartidaData;

.field element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

.field private esRanking:Z

.field private mTableLayout:Landroid/widget/TableLayout;

.field partidas:Lsoft/evm/amblyopiamobilegames/table/Partidas;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 71
    new-instance v0, Lsoft/evm/amblyopiamobilegames/table/Partidas;

    invoke-direct {v0}, Lsoft/evm/amblyopiamobilegames/table/Partidas;-><init>()V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->partidas:Lsoft/evm/amblyopiamobilegames/table/Partidas;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->esRanking:Z

    return-void
.end method

.method static synthetic access$000(Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->esRanking:Z

    return p0
.end method

.method static synthetic access$002(Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->esRanking:Z

    return p1
.end method

.method static synthetic access$100(Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;)Landroid/app/ProgressDialog;
    .locals 0

    .line 65
    iget-object p0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method


# virtual methods
.method public loadData()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 120
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 121
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 122
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 126
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "dd/MM/yyyy\nHH:mm:ss"

    invoke-direct {v4, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 128
    iget-object v5, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->data:[Lsoft/evm/amblyopiamobilegames/table/PartidaData;

    array-length v5, v5

    .line 130
    sget-boolean v6, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->actividad:Z

    const-string v7, " ("

    const-string v8, "correo"

    const-string v9, ""

    const-string v10, " "

    if-eqz v6, :cond_0

    .line 131
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->nombre_juego:Ljava/lang/String;

    const-string v13, "%"

    invoke-virtual {v12, v13, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v11, Lsoft/evm/amblyopiamobilegames/MainActivity;->user:Landroid/content/SharedPreferences;

    sget-object v12, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->correo:Ljava/lang/String;

    invoke-interface {v11, v8, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ")"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v11, 0x7f11017f

    invoke-virtual {v0, v11}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    :goto_0
    iget-object v6, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v6}, Landroid/widget/TableLayout;->removeAllViews()V

    const-string v6, "Usuario"

    const/4 v7, 0x0

    .line 139
    invoke-virtual {v0, v6, v7}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const/4 v11, -0x1

    move v13, v7

    move v14, v13

    move v15, v14

    move v12, v11

    :goto_1
    if-ge v12, v5, :cond_19

    const/16 v16, 0x0

    if-le v12, v11, :cond_1

    .line 148
    iget-object v7, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->data:[Lsoft/evm/amblyopiamobilegames/table/PartidaData;

    aget-object v16, v7, v12

    goto :goto_2

    .line 150
    :cond_1
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    move-object/from16 v7, v16

    .line 156
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move/from16 v17, v5

    .line 157
    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    move-object/from16 v18, v4

    const/4 v4, -0x1

    invoke-direct {v5, v4, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x800003

    .line 160
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v5, 0x14

    .line 162
    invoke-virtual {v11, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 163
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v4, 0x7f060000

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, -0x1

    if-eq v12, v5, :cond_3

    .line 166
    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, -0x100

    .line 168
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v13, v13, 0x1

    .line 170
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float v4, v1

    const/4 v5, 0x0

    .line 171
    invoke-virtual {v11, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 172
    iget-object v4, v7, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->correo:Ljava/lang/String;

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, -0xffff01

    .line 173
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    :cond_2
    iget-object v4, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v4, v11}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTableContent(Landroid/widget/TextView;)V

    .line 178
    :cond_3
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 179
    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    move/from16 v21, v13

    const/4 v13, -0x2

    move/from16 v22, v15

    const/4 v15, -0x1

    invoke-direct {v5, v15, v13}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x800003

    .line 182
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v5, 0x14

    .line 184
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v13, 0x7f060001

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v13, 0x7f060000

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v5, "#f0f0f0"

    if-ne v12, v15, :cond_4

    int-to-float v13, v3

    const/4 v15, 0x0

    .line 188
    invoke-virtual {v4, v15, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    const v13, 0x7f11014f

    .line 189
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v13, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v13, v4}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTableTitle(Landroid/widget/TextView;)V

    goto :goto_3

    .line 192
    :cond_4
    new-instance v13, Landroid/widget/TableRow$LayoutParams;

    const/4 v15, -0x1

    invoke-direct {v13, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 195
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f060001

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    iget-object v13, v7, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->nombre:Ljava/lang/String;

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v13, v7, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->correo:Ljava/lang/String;

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const v13, -0xffff01

    .line 198
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    int-to-float v13, v1

    const/4 v15, 0x0

    .line 199
    invoke-virtual {v4, v15, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 200
    iget-object v13, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v13, v4}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTableContent(Landroid/widget/TextView;)V

    .line 205
    :goto_3
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x1

    .line 206
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v20, "#f8f8f8"

    .line 208
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 210
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v23, v4

    const/4 v4, -0x1

    if-ne v12, v4, :cond_6

    move-object/from16 v24, v6

    .line 212
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v6, v2

    const/4 v4, 0x0

    .line 215
    invoke-virtual {v15, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_4

    :cond_6
    move-object/from16 v24, v6

    const/4 v4, 0x0

    .line 217
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v6, v4, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v6, v1

    const/4 v4, 0x0

    .line 220
    invoke-virtual {v15, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_4
    const/16 v4, 0x30

    .line 223
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v4, 0x14

    .line 225
    invoke-virtual {v15, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v6, "#000000"

    move-object/from16 v25, v8

    const/4 v8, -0x1

    if-ne v12, v8, :cond_7

    .line 229
    invoke-virtual {v15, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const v4, 0x7f110173

    .line 230
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(I)V

    .line 231
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f060000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float v4, v3

    const/4 v5, 0x0

    .line 234
    invoke-virtual {v15, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 235
    iget-object v4, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v4, v15}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTableTitle(Landroid/widget/TextView;)V

    goto :goto_5

    :cond_7
    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 237
    invoke-virtual {v15, v4, v4, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 238
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 239
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float v4, v2

    .line 240
    invoke-virtual {v15, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 241
    iget v4, v7, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s1:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v4, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v4, v15}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTableContent(Landroid/widget/TextView;)V

    .line 244
    :goto_5
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v4, 0x5

    const/4 v5, -0x1

    if-le v12, v5, :cond_13

    .line 248
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 249
    new-instance v8, Landroid/widget/TableRow$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v8, v15, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    int-to-float v8, v1

    const/4 v15, 0x0

    .line 253
    invoke-virtual {v5, v15, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v8, 0xa

    .line 254
    invoke-virtual {v5, v8, v8, v15, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v8, "#aaaaaa"

    .line 255
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 260
    iget-object v8, v7, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->juego:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v20, 0x2

    sparse-switch v15, :sswitch_data_0

    :goto_6
    const/4 v8, -0x1

    goto/16 :goto_7

    :sswitch_0
    const-string v15, "FLAPPY"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_6

    :cond_8
    const/16 v8, 0x8

    goto/16 :goto_7

    :sswitch_1
    const-string v15, "BREAKER"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_6

    :cond_9
    const/4 v8, 0x7

    goto :goto_7

    :sswitch_2
    const-string v15, "PINBALL"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_6

    :cond_a
    const/4 v8, 0x6

    goto :goto_7

    :sswitch_3
    const-string v15, "SPACE"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_6

    :cond_b
    move v8, v4

    goto :goto_7

    :sswitch_4
    const-string v15, "PONG"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_6

    :cond_c
    const/4 v8, 0x4

    goto :goto_7

    :sswitch_5
    const-string v15, "SNAKE (CON MUROS)"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_6

    :cond_d
    const/4 v8, 0x3

    goto :goto_7

    :sswitch_6
    const-string v15, "SNAKE (SIN MUROS)"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_6

    :cond_e
    move/from16 v8, v20

    goto :goto_7

    :sswitch_7
    const-string v15, "TETRIS"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_6

    :cond_f
    const/4 v8, 0x1

    goto :goto_7

    :sswitch_8
    const-string v15, "PACMAN"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto :goto_6

    :cond_10
    const/4 v8, 0x0

    :goto_7
    const v15, 0x7f1100d1

    packed-switch v8, :pswitch_data_0

    :goto_8
    move/from16 v27, v3

    move-object/from16 v26, v6

    move-object/from16 v19, v9

    move-object/from16 v8, v23

    goto/16 :goto_b

    .line 287
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f110181

    invoke-virtual {v0, v8}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v7, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 290
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v7, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 308
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v7, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 294
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f110157

    invoke-virtual {v0, v8}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v7, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 298
    :pswitch_4
    iget v4, v7, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "0"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const v4, 0x7f110150

    .line 299
    invoke-virtual {v0, v4}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_11
    const v4, 0x7f1100c4

    .line 301
    invoke-virtual {v0, v4}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 302
    :goto_9
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 269
    :pswitch_5
    new-instance v8, Landroid/text/SpannableString;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f11007b

    invoke-virtual {v0, v4}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v15, v7, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, "\n"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v15, 0x7f110143

    invoke-virtual {v0, v15}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, ": "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v15, 0x7f11018a

    invoke-virtual {v0, v15}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 270
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const v15, -0xff0100

    invoke-direct {v4, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 271
    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x2

    move-object/from16 v26, v6

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v6

    move/from16 v27, v3

    const/16 v3, 0x12

    invoke-virtual {v8, v4, v15, v6, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 272
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v14, v14, 0x1

    .line 273
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, -0xffff01

    .line 274
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/4 v3, -0x1

    .line 275
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    iget-object v3, v7, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->correo:Ljava/lang/String;

    move-object/from16 v4, v24

    move-object/from16 v6, v25

    invoke-interface {v4, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/high16 v3, -0x10000

    .line 277
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v8, v23

    .line 278
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a

    :cond_12
    move-object/from16 v8, v23

    :goto_a
    move-object/from16 v24, v4

    move-object/from16 v25, v6

    move-object/from16 v19, v9

    goto/16 :goto_b

    :pswitch_6
    move/from16 v27, v3

    move-object/from16 v26, v6

    move-object/from16 v8, v23

    move-object/from16 v4, v24

    move-object/from16 v6, v25

    .line 262
    new-instance v3, Landroid/text/SpannableString;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f11007b

    invoke-virtual {v0, v4}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v15, v7, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, "\n"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v15, 0x7f110143

    invoke-virtual {v0, v15}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, ": "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v15, 0x7f11014a

    invoke-virtual {v0, v15}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 263
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/high16 v15, -0x10000

    invoke-direct {v4, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 264
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x2

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v6

    move-object/from16 v19, v9

    const/16 v9, 0x12

    invoke-virtual {v3, v4, v15, v6, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 265
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v15, v22, 0x1

    .line 266
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    :pswitch_7
    move/from16 v27, v3

    move-object/from16 v26, v6

    move-object/from16 v19, v9

    move-object/from16 v8, v23

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f1100d4

    invoke-virtual {v0, v4}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v7, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :pswitch_8
    move/from16 v27, v3

    move-object/from16 v26, v6

    move-object/from16 v19, v9

    move-object/from16 v8, v23

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v7, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->s2:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b
    move/from16 v15, v22

    .line 312
    :goto_c
    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 313
    iget-object v3, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v3, v5}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTableContent(Landroid/widget/TextView;)V

    goto :goto_d

    :cond_13
    move/from16 v27, v3

    move-object/from16 v26, v6

    move-object/from16 v19, v9

    move-object/from16 v8, v23

    move/from16 v15, v22

    .line 317
    :goto_d
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v4, -0x1

    if-ne v12, v4, :cond_14

    .line 319
    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v4, v6}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v5, v2

    const/4 v9, 0x0

    .line 321
    invoke-virtual {v3, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_e

    :cond_14
    const/4 v6, -0x2

    const/4 v9, 0x0

    .line 323
    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v5, v6, v4}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v5, v1

    .line 325
    invoke-virtual {v3, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_e
    const/16 v5, 0x14

    .line 327
    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v5, "#ffffff"

    if-ne v12, v4, :cond_15

    .line 330
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060040

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 331
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v6, 0x7f060000

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    move/from16 v4, v27

    int-to-float v6, v4

    const/4 v9, 0x0

    .line 332
    invoke-virtual {v3, v9, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const v6, 0x7f1100af

    .line 333
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 334
    iget-object v6, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v6, v3}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTableTitle(Landroid/widget/TextView;)V

    move-object v6, v10

    move-object/from16 v10, v18

    goto :goto_f

    :cond_15
    move/from16 v4, v27

    .line 336
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 337
    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v6, v10

    .line 340
    iget-wide v9, v7, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->fecha:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v10, v18

    invoke-virtual {v10, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v9, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v9, v3}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTableContent(Landroid/widget/TextView;)V

    .line 345
    :goto_f
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v18, v6

    const/4 v6, 0x1

    .line 346
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v6, 0x5

    .line 347
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 349
    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    move-object/from16 v20, v10

    const/4 v10, -0x1

    invoke-direct {v6, v10, v10}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-ne v12, v10, :cond_16

    move/from16 v22, v14

    .line 356
    new-instance v14, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v14, v10, v10}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v14, "#f7f7f7"

    .line 359
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    move/from16 v23, v15

    goto :goto_10

    :cond_16
    move/from16 v22, v14

    .line 361
    new-instance v14, Landroid/widget/TableRow$LayoutParams;

    move/from16 v23, v15

    const/4 v15, -0x2

    invoke-direct {v14, v10, v15}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_10
    const/4 v14, 0x3

    .line 367
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setGravity(I)V

    if-ne v12, v10, :cond_17

    const v5, 0x7f11019a

    .line 370
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(I)V

    const/16 v5, 0x14

    .line 371
    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v5, "#f7f7f7"

    .line 372
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    int-to-float v5, v2

    const/4 v10, 0x0

    .line 373
    invoke-virtual {v6, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f06003e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v7, 0x7f060000

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    int-to-float v5, v4

    .line 376
    invoke-virtual {v6, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 377
    iget-object v5, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v5, v6}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTableTitle(Landroid/widget/TextView;)V

    goto :goto_11

    :cond_17
    const/4 v10, 0x0

    const/16 v14, 0xa

    .line 379
    invoke-virtual {v6, v14, v14, v10, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 380
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 381
    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    iget-wide v14, v7, Lsoft/evm/amblyopiamobilegames/table/PartidaData;->tiempo:J

    invoke-static {v14, v15}, Lsoft/evm/amblyopiamobilegames/MainActivity;->formatearMilis(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float v5, v1

    .line 383
    invoke-virtual {v6, v10, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 384
    iget-object v5, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {v5, v6}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTableContent(Landroid/widget/TextView;)V

    .line 387
    :goto_11
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 390
    new-instance v5, Landroid/widget/TableRow;

    invoke-direct {v5, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    add-int/lit8 v6, v12, 0x1

    .line 391
    invoke-virtual {v5, v6}, Landroid/widget/TableRow;->setId(I)V

    .line 392
    new-instance v7, Landroid/widget/TableLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v14, -0x1

    invoke-direct {v7, v14, v10}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    const/4 v10, 0x0

    .line 394
    invoke-virtual {v7, v10, v10, v10, v10}, Landroid/widget/TableLayout$LayoutParams;->setMargins(IIII)V

    .line 395
    invoke-virtual {v5, v10, v10, v10, v10}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 396
    invoke-virtual {v5, v7}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    invoke-virtual {v5, v11}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 400
    invoke-virtual {v5, v8}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 401
    invoke-virtual {v5, v13}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 402
    invoke-virtual {v5, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 403
    invoke-virtual {v5, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 405
    iget-object v3, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v3, v5, v7}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-le v12, v14, :cond_18

    .line 410
    new-instance v3, Landroid/widget/TableRow;

    invoke-direct {v3, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 411
    new-instance v5, Landroid/widget/TableLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v5, v14, v7}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x0

    .line 413
    invoke-virtual {v5, v8, v8, v8, v8}, Landroid/widget/TableLayout$LayoutParams;->setMargins(IIII)V

    .line 415
    invoke-virtual {v3, v5}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 417
    new-instance v10, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v10, v14, v7}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    const/4 v7, 0x4

    .line 419
    iput v7, v10, Landroid/widget/TableRow$LayoutParams;->span:I

    .line 420
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "#d9d9d9"

    .line 421
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/4 v7, 0x1

    .line 422
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setHeight(I)V

    .line 424
    invoke-virtual {v3, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 425
    iget-object v7, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v7, v3, v5}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_12

    :cond_18
    const/4 v8, 0x0

    :goto_12
    move v3, v4

    move v12, v6

    move v7, v8

    move v11, v14

    move/from16 v5, v17

    move-object/from16 v10, v18

    move-object/from16 v9, v19

    move-object/from16 v4, v20

    move/from16 v13, v21

    move/from16 v14, v22

    move/from16 v15, v23

    move-object/from16 v6, v24

    move-object/from16 v8, v25

    goto/16 :goto_1

    :cond_19
    return-void

    nop

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

    .line 80
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 83
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->requestWindowFeature(I)Z

    .line 84
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f0d0091

    .line 87
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->setContentView(I)V

    .line 89
    new-instance v0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->element:Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    .line 91
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->progressDialog:Landroid/app/ProgressDialog;

    .line 92
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->alertDialog:Landroid/app/AlertDialog;

    const v0, 0x7f0a0221

    .line 95
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->mTableLayout:Landroid/widget/TableLayout;

    .line 97
    invoke-virtual {v0, p1}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    .line 99
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->startLoadData()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 609
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 610
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_0
    return-void
.end method

.method public startLoadData()V
    .locals 4

    .line 104
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 105
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f110070

    invoke-virtual {p0, v2}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 107
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 108
    new-instance v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;

    invoke-direct {v0, p0}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;-><init>(Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
