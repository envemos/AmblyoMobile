.class public Lsoft/evm/amblyopiamobilegames/layoutElements/Element;
.super Ljava/lang/Object;
.source "Element.java"


# instance fields
.field private final ALDRICH:Ljava/lang/String;

.field private final BLOCKTOPIA:Ljava/lang/String;

.field private final FIERY_TURK:Ljava/lang/String;

.field private final MAYUS:Z

.field private final MINECRAFT:Ljava/lang/String;

.field private final PIXELYOURLIFE:Ljava/lang/String;

.field private final PIXEL_INVADERS:Ljava/lang/String;

.field private final PIXILATOR:Ljava/lang/String;

.field private final PX10:Ljava/lang/String;

.field private final REDUCTION:Ljava/lang/String;

.field private final SCUMSKULLZ_BOX:Ljava/lang/String;

.field private final SCUMSKULLZ_REGULAR:Ljava/lang/String;

.field private final SYLLADEXFANON:Ljava/lang/String;

.field private final _04B_19__:Ljava/lang/String;

.field private amarillo:I

.field private azul:I

.field private azulado:I

.field private blanco:I

.field private context:Landroid/content/Context;

.field private gris:I

.field private grisClaro:I

.field private grisMedioClaro:I

.field private grisMedioMedioClaro:I

.field private grisMedioOscuro:I

.field private grisOscuro:I

.field private negro:I

.field private rojo:I

.field private rosa:I

.field private verde:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "title/04B_19__.TTF"

    .line 31
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->_04B_19__:Ljava/lang/String;

    const-string v0, "title/aldrich.ttf"

    .line 32
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->ALDRICH:Ljava/lang/String;

    const-string v0, "title/Blocktopia.ttf"

    .line 33
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->BLOCKTOPIA:Ljava/lang/String;

    const-string v0, "title/Minecraft.ttf"

    .line 34
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->MINECRAFT:Ljava/lang/String;

    const-string v0, "title/Reduction.ttf"

    .line 35
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->REDUCTION:Ljava/lang/String;

    const-string v0, "text/Fiery_Turk.ttf"

    .line 38
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->FIERY_TURK:Ljava/lang/String;

    const-string v0, "text/pixelyourlife.ttf"

    .line 39
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->PIXELYOURLIFE:Ljava/lang/String;

    const-string v0, "text/Pixilator.ttf"

    .line 40
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->PIXILATOR:Ljava/lang/String;

    const-string v0, "text/px10.ttf"

    .line 41
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->PX10:Ljava/lang/String;

    const-string v0, "text/minus/SylladexFanon.ttf"

    .line 42
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->SYLLADEXFANON:Ljava/lang/String;

    const-string v0, "etc/pixel_invaders.ttf"

    .line 45
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->PIXEL_INVADERS:Ljava/lang/String;

    const-string v0, "etc/scumskullz_box.ttf"

    .line 46
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->SCUMSKULLZ_BOX:Ljava/lang/String;

    const-string v0, "etc/scumskullz_regular.ttf"

    .line 47
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->SCUMSKULLZ_REGULAR:Ljava/lang/String;

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->MAYUS:Z

    .line 69
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->colores()V

    return-void
.end method

.method private colores()V
    .locals 2

    .line 74
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->blanco:I

    .line 75
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->grisClaro:I

    .line 76
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->grisMedioClaro:I

    .line 77
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->grisMedioMedioClaro:I

    .line 78
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->gris:I

    .line 79
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->grisMedioOscuro:I

    .line 80
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->grisOscuro:I

    .line 81
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->negro:I

    .line 82
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->verde:I

    .line 83
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->azul:I

    .line 84
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->azulado:I

    .line 85
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->rojo:I

    .line 86
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->rosa:I

    .line 87
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->amarillo:I

    return-void
.end method

.method private set(Landroid/widget/Button;Ljava/lang/String;I)V
    .locals 1

    .line 291
    invoke-virtual {p0, p1, p2}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setFont(Landroid/widget/Button;Ljava/lang/String;)V

    .line 292
    new-instance p2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 294
    invoke-virtual {p0, p2}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setBold(Landroid/text/SpannableString;)V

    .line 295
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private set(Landroid/widget/Button;Ljava/lang/String;II)V
    .locals 1

    .line 282
    invoke-virtual {p0, p1, p2}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setFont(Landroid/widget/Button;Ljava/lang/String;)V

    .line 283
    new-instance p2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 285
    invoke-virtual {p0, p2}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setBold(Landroid/text/SpannableString;)V

    .line 286
    :cond_0
    invoke-direct {p0, p2, p4}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setColor(Landroid/text/SpannableString;I)V

    .line 287
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private set(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 1

    .line 274
    invoke-virtual {p0, p1, p2}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setFont(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 275
    new-instance p2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 277
    invoke-virtual {p0, p2}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setBold(Landroid/text/SpannableString;)V

    .line 278
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private set(Landroid/widget/TextView;Ljava/lang/String;II)V
    .locals 1

    .line 252
    invoke-virtual {p0, p1, p2}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setFont(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 253
    new-instance p2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 255
    invoke-virtual {p0, p2}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setBold(Landroid/text/SpannableString;)V

    .line 256
    :cond_0
    invoke-direct {p0, p2, p4}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setColor(Landroid/text/SpannableString;I)V

    .line 257
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private set(Landroid/widget/TextView;Ljava/lang/String;IIZ)V
    .locals 3

    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    .line 242
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 244
    :goto_0
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 245
    invoke-virtual {p5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/TextView;Ljava/lang/String;II)V

    return-void
.end method

.method private set(Lcom/google/android/material/appbar/CollapsingToolbarLayout;Ljava/lang/String;II)V
    .locals 1

    .line 263
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string p4, "mCollapsingTextHelper"

    invoke-virtual {p3, p4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3

    const/4 p4, 0x1

    .line 264
    invoke-virtual {p3, p4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 265
    invoke-virtual {p3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 266
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string v0, "mTextPaint"

    invoke-virtual {p3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3

    .line 267
    invoke-virtual {p3, p4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 268
    invoke-virtual {p3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/text/TextPaint;

    invoke-direct {p0, p1, p2}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setFont(Landroid/text/TextPaint;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private setCheckBoxColor(Landroid/widget/CheckBox;I)V
    .locals 0

    .line 331
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setColor(Landroid/text/SpannableString;I)V
    .locals 3

    .line 326
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 327
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private setFont(Landroid/text/TextPaint;Ljava/lang/String;)V
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 314
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    .line 315
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private setRadioButtonColor(Landroid/widget/RadioButton;I)V
    .locals 0

    .line 335
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public setActivityButton(Landroid/widget/Button;)V
    .locals 2

    const-string v0, "text/Pixilator.ttf"

    const/4 v1, 0x1

    .line 173
    invoke-direct {p0, p1, v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/Button;Ljava/lang/String;I)V

    return-void
.end method

.method public setActivityText(Landroid/widget/TextView;)V
    .locals 3

    .line 157
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->grisMedioOscuro:I

    const-string v1, "text/px10.ttf"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/TextView;Ljava/lang/String;II)V

    return-void
.end method

.method public setActivityTextContent(Landroid/widget/TextView;)V
    .locals 2

    const-string v0, "title/Minecraft.ttf"

    const/4 v1, 0x1

    .line 161
    invoke-direct {p0, p1, v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/TextView;Ljava/lang/String;I)V

    return-void
.end method

.method public setActivityTextContentBold(Landroid/widget/TextView;)V
    .locals 3

    .line 165
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->grisOscuro:I

    const-string v1, "title/Minecraft.ttf"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/TextView;Ljava/lang/String;II)V

    return-void
.end method

.method public setActivityTitle(Landroid/widget/TextView;)V
    .locals 3

    .line 169
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->grisOscuro:I

    const-string v1, "text/Pixilator.ttf"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/TextView;Ljava/lang/String;II)V

    return-void
.end method

.method public setAppbarElement(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .locals 3

    .line 226
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->grisOscuro:I

    const-string v1, "text/px10.ttf"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Lcom/google/android/material/appbar/CollapsingToolbarLayout;Ljava/lang/String;II)V

    return-void
.end method

.method public setAutoText(Landroid/widget/CheckBox;)V
    .locals 3

    .line 149
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->negro:I

    const-string v1, "text/Fiery_Turk.ttf"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/Button;Ljava/lang/String;II)V

    .line 151
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->verde:I

    invoke-direct {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setCheckBoxColor(Landroid/widget/CheckBox;I)V

    return-void
.end method

.method public setBold(Landroid/text/SpannableString;)V
    .locals 4

    .line 320
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 321
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x12

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public setButtonGameMenu(Landroid/widget/Button;I)V
    .locals 1

    .line 127
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 128
    iget p2, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->negro:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    const-string p2, "title/04B_19__.TTF"

    const/4 v0, 0x1

    .line 129
    invoke-direct {p0, p1, p2, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/Button;Ljava/lang/String;I)V

    return-void
.end method

.method public setButtonMain(Landroid/widget/Button;)V
    .locals 3

    .line 116
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->negro:I

    const-string v1, "title/Reduction.ttf"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/Button;Ljava/lang/String;II)V

    return-void
.end method

.method public setCopyright(Landroid/widget/TextView;)V
    .locals 3

    .line 111
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->negro:I

    const-string v1, "text/Pixilator.ttf"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/TextView;Ljava/lang/String;II)V

    return-void
.end method

.method public setFont(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 2

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 308
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    .line 309
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setFont(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 302
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    .line 303
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setItemSelectedText(Landroid/widget/TextView;)V
    .locals 3

    .line 230
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->grisOscuro:I

    const-string v1, "text/px10.ttf"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/TextView;Ljava/lang/String;II)V

    return-void
.end method

.method public setLogin(Landroid/widget/Button;)V
    .locals 3

    .line 107
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->grisOscuro:I

    const-string v1, "text/Pixilator.ttf"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/Button;Ljava/lang/String;II)V

    return-void
.end method

.method public setQuestionText(Landroid/widget/TextView;)V
    .locals 3

    .line 234
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->negro:I

    const-string v1, "text/px10.ttf"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/TextView;Ljava/lang/String;II)V

    return-void
.end method

.method public setRadioButtonF(Landroid/widget/RadioButton;)V
    .locals 1

    .line 191
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->rosa:I

    invoke-direct {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setRadioButtonColor(Landroid/widget/RadioButton;I)V

    return-void
.end method

.method public setRadioButtonM(Landroid/widget/RadioButton;)V
    .locals 1

    .line 187
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->azul:I

    invoke-direct {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setRadioButtonColor(Landroid/widget/RadioButton;I)V

    return-void
.end method

.method public setRulesName(Landroid/widget/TextView;)V
    .locals 6

    .line 207
    iget v4, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->negro:I

    const-string v2, "title/Blocktopia.ttf"

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/TextView;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public setRulesText(Landroid/widget/TextView;)V
    .locals 3

    .line 211
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->grisOscuro:I

    const-string v1, "title/Blocktopia.ttf"

    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/TextView;Ljava/lang/String;II)V

    return-void
.end method

.method public setSesionText(Landroid/widget/TextView;)V
    .locals 3

    .line 183
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->grisOscuro:I

    const-string v1, "text/Fiery_Turk.ttf"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/TextView;Ljava/lang/String;II)V

    return-void
.end method

.method public setSesionTextTitle(Landroid/widget/TextView;)V
    .locals 3

    .line 179
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->grisOscuro:I

    const-string v1, "text/Fiery_Turk.ttf"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/TextView;Ljava/lang/String;II)V

    return-void
.end method

.method public setSettingsCheckBox(Landroid/widget/CheckBox;)V
    .locals 3

    .line 201
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->grisOscuro:I

    const-string v1, "text/minus/SylladexFanon.ttf"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/Button;Ljava/lang/String;II)V

    .line 202
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->azul:I

    invoke-direct {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setCheckBoxColor(Landroid/widget/CheckBox;I)V

    return-void
.end method

.method public setSettingsText(Landroid/widget/TextView;)V
    .locals 3

    .line 197
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->grisOscuro:I

    const-string v1, "text/minus/SylladexFanon.ttf"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/TextView;Ljava/lang/String;II)V

    return-void
.end method

.method public setTableContent(Landroid/widget/TextView;)V
    .locals 2

    const-string v0, "text/px10.ttf"

    const/4 v1, 0x1

    .line 222
    invoke-direct {p0, p1, v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/TextView;Ljava/lang/String;I)V

    return-void
.end method

.method public setTableTitle(Landroid/widget/TextView;)V
    .locals 2

    const-string v0, "text/px10.ttf"

    const/4 v1, 0x1

    .line 217
    invoke-direct {p0, p1, v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/TextView;Ljava/lang/String;I)V

    return-void
.end method

.method public setTextLevel(Landroid/widget/TextView;)V
    .locals 3

    .line 145
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->negro:I

    const-string v1, "text/Fiery_Turk.ttf"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/TextView;Ljava/lang/String;II)V

    return-void
.end method

.method public setTitle(Landroid/widget/TextView;)V
    .locals 5

    const-string v0, "title/aldrich.ttf"

    .line 94
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setFont(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 95
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    const v3, 0x7f110040

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->context:Landroid/content/Context;

    const v3, 0x7f11011a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setBold(Landroid/text/SpannableString;)V

    .line 97
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_sano()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/16 v4, 0x12

    .line 98
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 99
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Colores;->getOjo_vago()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0xc

    .line 100
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 101
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleGames(Landroid/widget/TextView;)V
    .locals 3

    .line 133
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->negro:I

    const-string v1, "title/Blocktopia.ttf"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/TextView;Ljava/lang/String;II)V

    return-void
.end method

.method public setTtileGameName(Landroid/widget/TextView;)V
    .locals 6

    .line 139
    iget v4, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->negro:I

    const-string v2, "title/Blocktopia.ttf"

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/TextView;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public setWelcome(Landroid/widget/TextView;)V
    .locals 3

    .line 120
    iget v0, p0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->gris:I

    const-string v1, "text/Fiery_Turk.ttf"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->set(Landroid/widget/TextView;Ljava/lang/String;II)V

    return-void
.end method

.method public toColor(I)I
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p1, -0xff0100

    goto :goto_0

    :cond_1
    const p1, -0xff01

    goto :goto_0

    :cond_2
    const p1, -0xff0001

    goto :goto_0

    :cond_3
    const/16 p1, -0x100

    goto :goto_0

    :cond_4
    const p1, -0xffff01

    goto :goto_0

    :cond_5
    const/high16 p1, -0x10000

    :goto_0
    return p1
.end method
