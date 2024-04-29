.class public Lsoft/evm/amblyopiamobilegames/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field background_color:Landroid/widget/TextView;

.field private cpL:Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;

.field private cpR:Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;

.field editor:Landroid/content/SharedPreferences$Editor;

.field fondo:Landroid/widget/Spinner;

.field lazy_eye:Landroid/widget/TextView;

.field left_eye:Landroid/widget/TextView;

.field nota:Landroid/widget/TextView;

.field ojo_L:Landroid/widget/Spinner;

.field ojo_R:Landroid/widget/Spinner;

.field ojo_vago:Landroid/widget/Spinner;

.field prefs:Landroid/content/SharedPreferences;

.field right_eye:Landroid/widget/TextView;

.field sonido:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private colorPicker()V
    .locals 14

    .line 53
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "customColorR"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 54
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "customColorL"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 56
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 57
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 58
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 59
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 61
    new-instance v0, Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;-><init>(Landroid/app/Activity;IIII)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->cpR:Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;

    .line 63
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    .line 64
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v11

    .line 65
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v12

    .line 66
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    .line 68
    new-instance v0, Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;

    move-object v8, v0

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;-><init>(Landroid/app/Activity;IIII)V

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->cpL:Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;

    .line 71
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->cpR:Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/SettingsActivity$1;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/SettingsActivity$1;-><init>(Lsoft/evm/amblyopiamobilegames/SettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;->setCallback(Lcom/pes/androidmaterialcolorpickerdialog/ColorPickerCallback;)V

    .line 87
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->cpL:Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;

    new-instance v1, Lsoft/evm/amblyopiamobilegames/SettingsActivity$2;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/SettingsActivity$2;-><init>(Lsoft/evm/amblyopiamobilegames/SettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;->setCallback(Lcom/pes/androidmaterialcolorpickerdialog/ColorPickerCallback;)V

    return-void
.end method

.method private incializar()V
    .locals 4

    .line 121
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const v0, 0x7f0a0146

    .line 123
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->ojo_L:Landroid/widget/Spinner;

    const v0, 0x7f0a01c9

    .line 124
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->ojo_R:Landroid/widget/Spinner;

    const v0, 0x7f0a029b

    .line 125
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->ojo_vago:Landroid/widget/Spinner;

    const v0, 0x7f0a010d

    .line 126
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->fondo:Landroid/widget/Spinner;

    const v0, 0x7f0a009c

    .line 127
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->sonido:Landroid/widget/CheckBox;

    .line 129
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d008f

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 130
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->ojo_L:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 131
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->ojo_R:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 132
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f030007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 133
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->ojo_vago:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 134
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x7f030000

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 135
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->fondo:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 137
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->ojo_L:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 138
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->ojo_R:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 139
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->ojo_vago:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 140
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->fondo:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 142
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->ojo_L:Landroid/widget/Spinner;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "ojo_izquierdo"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 143
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->ojo_R:Landroid/widget/Spinner;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "ojo_derecho"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 144
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->ojo_vago:Landroid/widget/Spinner;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "ojo_vago"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 145
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->fondo:Landroid/widget/Spinner;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "fondo"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 146
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->sonido:Landroid/widget/CheckBox;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "sonido"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private pintarInterfaces()V
    .locals 2

    .line 105
    new-instance v0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a023f

    .line 106
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->nota:Landroid/widget/TextView;

    const v1, 0x7f0a0252

    .line 107
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->left_eye:Landroid/widget/TextView;

    const v1, 0x7f0a0251

    .line 108
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->right_eye:Landroid/widget/TextView;

    const v1, 0x7f0a0253

    .line 109
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->lazy_eye:Landroid/widget/TextView;

    const v1, 0x7f0a0250

    .line 110
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->background_color:Landroid/widget/TextView;

    .line 111
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->nota:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityText(Landroid/widget/TextView;)V

    .line 112
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->left_eye:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setSettingsText(Landroid/widget/TextView;)V

    .line 113
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->right_eye:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setSettingsText(Landroid/widget/TextView;)V

    .line 114
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->lazy_eye:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setSettingsText(Landroid/widget/TextView;)V

    .line 115
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->background_color:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setSettingsText(Landroid/widget/TextView;)V

    .line 116
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->sonido:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setSettingsCheckBox(Landroid/widget/CheckBox;)V

    return-void
.end method


# virtual methods
.method public onCheckboxClicked(Landroid/view/View;)V
    .locals 2

    .line 196
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v0, "sonido"

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 201
    :cond_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 202
    :goto_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->requestWindowFeature(I)Z

    .line 41
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d002e

    .line 43
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->setContentView(I)V

    const-string p1, "MisPreferencias"

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->prefs:Landroid/content/SharedPreferences;

    .line 45
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->colorPicker()V

    .line 46
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->incializar()V

    .line 47
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->pintarInterfaces()V

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

    .line 153
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result p1

    const/4 p2, 0x6

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 177
    :sswitch_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->ojo_vago:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    const-string p3, "ojo_vago"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 178
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 167
    :sswitch_1
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object p3, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->ojo_R:Landroid/widget/Spinner;

    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p3

    const-string p4, "ojo_derecho"

    invoke-interface {p1, p4, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 168
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->ojo_R:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    if-ne p1, p2, :cond_0

    .line 170
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->cpR:Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;

    invoke-virtual {p1}, Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;->show()V

    .line 171
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->cpR:Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;

    invoke-virtual {p1}, Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;->enableAutoClose()V

    .line 173
    :cond_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 157
    :sswitch_2
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object p3, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->ojo_L:Landroid/widget/Spinner;

    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p3

    const-string p4, "ojo_izquierdo"

    invoke-interface {p1, p4, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 158
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->ojo_L:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    if-ne p1, p2, :cond_1

    .line 160
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->cpL:Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;

    invoke-virtual {p1}, Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;->show()V

    .line 161
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->cpL:Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;

    invoke-virtual {p1}, Lcom/pes/androidmaterialcolorpickerdialog/ColorPicker;->enableAutoClose()V

    .line 163
    :cond_1
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 182
    :sswitch_3
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->fondo:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    const-string p3, "fondo"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 183
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a010d -> :sswitch_3
        0x7f0a0146 -> :sswitch_2
        0x7f0a01c9 -> :sswitch_1
        0x7f0a029b -> :sswitch_0
    .end sparse-switch
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

.method public save(Landroid/view/View;)V
    .locals 0

    .line 206
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/SettingsActivity;->finish()V

    return-void
.end method
