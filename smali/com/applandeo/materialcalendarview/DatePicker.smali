.class public Lcom/applandeo/materialcalendarview/DatePicker;
.super Ljava/lang/Object;
.source "DatePicker.java"


# instance fields
.field private mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

.field private mCancelButton:Landroidx/appcompat/widget/AppCompatButton;

.field private final mContext:Landroid/content/Context;

.field private mOkButton:Landroidx/appcompat/widget/AppCompatButton;

.field private mTodayButton:Landroidx/appcompat/widget/AppCompatButton;


# direct methods
.method public static synthetic $r8$lambda$ncfSqbqQrqAjhf-XHsCeblWX0Sg(Lcom/applandeo/materialcalendarview/DatePicker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applandeo/materialcalendarview/DatePicker;->setOkButtonState(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/applandeo/materialcalendarview/utils/CalendarProperties;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    return-void
.end method

.method static synthetic lambda$show$0(Lcom/applandeo/materialcalendarview/CalendarView;Ljava/util/Calendar;)V
    .locals 0

    .line 59
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/CalendarView;->setDate(Ljava/util/Calendar;)V
    :try_end_0
    .catch Lcom/applandeo/materialcalendarview/exceptions/OutOfDateRangeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/exceptions/OutOfDateRangeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$show$1(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 69
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    return-void
.end method

.method static synthetic lambda$show$3(Lcom/applandeo/materialcalendarview/CalendarView;Landroid/view/View;)V
    .locals 0

    .line 76
    invoke-virtual {p0}, Lcom/applandeo/materialcalendarview/CalendarView;->showCurrentMonthPage()V

    return-void
.end method

.method private setDialogButtonsColors()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getDialogButtonsColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mCancelButton:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v2}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getDialogButtonsColor()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setTextColor(I)V

    .line 86
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mTodayButton:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v2}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getDialogButtonsColor()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private setOkButtonState(Z)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mOkButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getDialogButtonsColor()I

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mOkButton:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    .line 95
    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getDialogButtonsColor()I

    move-result p1

    goto :goto_0

    :cond_0
    sget p1, Lcom/applandeo/materialcalendarview/R$color;->disabledDialogButtonColor:I

    .line 94
    :goto_0
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private setTodayButtonVisibility()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getMaximumDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->isMonthAfter(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    .line 101
    invoke-virtual {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getMinimumDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->isMonthBefore(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mTodayButton:Landroidx/appcompat/widget/AppCompatButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method synthetic lambda$show$2$com-applandeo-materialcalendarview-DatePicker(Landroidx/appcompat/app/AlertDialog;Lcom/applandeo/materialcalendarview/CalendarView;Landroid/view/View;)V
    .locals 0

    .line 72
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 73
    iget-object p1, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getOnSelectDateListener()Lcom/applandeo/materialcalendarview/listeners/OnSelectDateListener;

    move-result-object p1

    invoke-virtual {p2}, Lcom/applandeo/materialcalendarview/CalendarView;->getSelectedDates()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/applandeo/materialcalendarview/listeners/OnSelectDateListener;->onSelect(Ljava/util/List;)V

    return-void
.end method

.method public show()Lcom/applandeo/materialcalendarview/DatePicker;
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 37
    sget v1, Lcom/applandeo/materialcalendarview/R$layout;->date_picker_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getPagesColor()I

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getPagesColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    :cond_0
    sget v1, Lcom/applandeo/materialcalendarview/R$id;->negative_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v1, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mCancelButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 44
    sget v1, Lcom/applandeo/materialcalendarview/R$id;->positive_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v1, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mOkButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 45
    sget v1, Lcom/applandeo/materialcalendarview/R$id;->today_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v1, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mTodayButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 47
    invoke-direct {p0}, Lcom/applandeo/materialcalendarview/DatePicker;->setTodayButtonVisibility()V

    .line 48
    invoke-direct {p0}, Lcom/applandeo/materialcalendarview/DatePicker;->setDialogButtonsColors()V

    .line 49
    iget-object v1, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getCalendarType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Lcom/applandeo/materialcalendarview/DatePicker;->setOkButtonState(Z)V

    .line 50
    iget-object v1, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    new-instance v2, Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda4;-><init>(Lcom/applandeo/materialcalendarview/DatePicker;)V

    invoke-virtual {v1, v2}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setOnSelectionAbilityListener(Lcom/applandeo/materialcalendarview/listeners/OnSelectionAbilityListener;)V

    .line 52
    new-instance v1, Lcom/applandeo/materialcalendarview/CalendarView;

    iget-object v2, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-direct {v1, v2, v3}, Lcom/applandeo/materialcalendarview/CalendarView;-><init>(Landroid/content/Context;Lcom/applandeo/materialcalendarview/utils/CalendarProperties;)V

    .line 54
    sget v2, Lcom/applandeo/materialcalendarview/R$id;->calendarContainer:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 55
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 57
    iget-object v2, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v2}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lcom/annimon/stream/Optional;->ofNullable(Ljava/lang/Object;)Lcom/annimon/stream/Optional;

    move-result-object v2

    new-instance v3, Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda3;-><init>(Lcom/applandeo/materialcalendarview/CalendarView;)V

    invoke-virtual {v2, v3}, Lcom/annimon/stream/Optional;->ifPresent(Lcom/annimon/stream/function/Consumer;)V

    .line 65
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 67
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mCancelButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v3, Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mOkButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v3, Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2, v1}, Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda2;-><init>(Lcom/applandeo/materialcalendarview/DatePicker;Landroidx/appcompat/app/AlertDialog;Lcom/applandeo/materialcalendarview/CalendarView;)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/DatePicker;->mTodayButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v3, Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/applandeo/materialcalendarview/DatePicker$$ExternalSyntheticLambda1;-><init>(Lcom/applandeo/materialcalendarview/CalendarView;)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-object p0
.end method
