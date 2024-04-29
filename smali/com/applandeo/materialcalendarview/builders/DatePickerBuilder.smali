.class public Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
.super Ljava/lang/Object;
.source "DatePickerBuilder.java"


# instance fields
.field private mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/applandeo/materialcalendarview/listeners/OnSelectDateListener;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-direct {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    const/4 p1, 0x1

    .line 34
    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setCalendarType(I)V

    .line 35
    iget-object p1, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {p1, p2}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setOnSelectDateListener(Lcom/applandeo/materialcalendarview/listeners/OnSelectDateListener;)V

    return-void
.end method


# virtual methods
.method public abbreviationsBarColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 451
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setAbbreviationsBarColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public abbreviationsBarVisibility(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setAbbreviationsBarVisibility(I)V

    return-object p0
.end method

.method public abbreviationsLabelsColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 497
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setAbbreviationsLabelsColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public anotherMonthsDaysLabelsColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 566
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setAnotherMonthsDaysLabelsColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/applandeo/materialcalendarview/DatePicker;
    .locals 3

    .line 44
    new-instance v0, Lcom/applandeo/materialcalendarview/DatePicker;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-direct {v0, v1, v2}, Lcom/applandeo/materialcalendarview/DatePicker;-><init>(Landroid/content/Context;Lcom/applandeo/materialcalendarview/utils/CalendarProperties;)V

    return-object v0
.end method

.method public date(Ljava/util/Calendar;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setDate(Ljava/util/Calendar;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public daysLabelsColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 520
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setDaysLabelsColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public dialogButtonsColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setDialogButtonsColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public disabledDays(Ljava/util/List;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;)",
            "Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 354
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setDisabledDays(Ljava/util/List;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public disabledDaysLabelsColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 428
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setDisabledDaysLabelsColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public forwardButtonSrc(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setForwardButtonSrc(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public forwardPageChangeListener(Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 405
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setForwardPageChangeListener(Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public headerColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setHeaderColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public headerLabelColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setHeaderLabelColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public headerVisibility(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setHeaderVisibility(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public highlightedDays(Ljava/util/List;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;)",
            "Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setHighlightedDays(Ljava/util/List;)V

    return-object p0
.end method

.method public highlightedDaysLabelsColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setHighlightedDaysLabelsColor(I)V

    return-object p0
.end method

.method public maximumDate(Ljava/util/Calendar;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 331
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setMaximumDate(Ljava/util/Calendar;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public minimumDate(Ljava/util/Calendar;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setMinimumDate(Ljava/util/Calendar;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public pagesColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 474
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setPagesColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public pickerType(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setPickerType(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public previousButtonSrc(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setPreviousButtonSrc(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public previousPageChangeListener(Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 382
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setPreviousPageChangeListener(Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public selectedDays(Ljava/util/List;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;)",
            "Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 589
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setSelectedDays(Ljava/util/List;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public selectionColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setSelectionColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public selectionLabelColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 543
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setSelectionLabelColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setAbbreviationsBarColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setAbbreviationsBarColor(I)V

    return-object p0
.end method

.method public setAbbreviationsLabelsColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setAbbreviationsLabelsColor(I)V

    return-object p0
.end method

.method public setAnotherMonthsDaysLabelsColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setAnotherMonthsDaysLabelsColor(I)V

    return-object p0
.end method

.method public setDate(Ljava/util/Calendar;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setCalendar(Ljava/util/Calendar;)V

    return-object p0
.end method

.method public setDaysLabelsColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setDaysLabelsColor(I)V

    return-object p0
.end method

.method public setDialogButtonsColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setDialogButtonsColor(I)V

    return-object p0
.end method

.method public setDisabledDays(Ljava/util/List;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;)",
            "Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setDisabledDays(Ljava/util/List;)V

    return-object p0
.end method

.method public setDisabledDaysLabelsColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setDisabledDaysLabelsColor(I)V

    return-object p0
.end method

.method public setForwardButtonSrc(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setForwardButtonSrc(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setForwardPageChangeListener(Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setOnForwardPageChangeListener(Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;)V

    return-object p0
.end method

.method public setHeaderColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setHeaderColor(I)V

    return-object p0
.end method

.method public setHeaderLabelColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setHeaderLabelColor(I)V

    return-object p0
.end method

.method public setHeaderVisibility(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setHeaderVisibility(I)V

    return-object p0
.end method

.method public setMaximumDate(Ljava/util/Calendar;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setMaximumDate(Ljava/util/Calendar;)V

    return-object p0
.end method

.method public setMinimumDate(Ljava/util/Calendar;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setMinimumDate(Ljava/util/Calendar;)V

    return-object p0
.end method

.method public setPagesColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setPagesColor(I)V

    return-object p0
.end method

.method public setPickerType(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setCalendarType(I)V

    return-object p0
.end method

.method public setPreviousButtonSrc(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setPreviousButtonSrc(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setPreviousPageChangeListener(Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setOnPreviousPageChangeListener(Lcom/applandeo/materialcalendarview/listeners/OnCalendarPageChangeListener;)V

    return-object p0
.end method

.method public setSelectedDays(Ljava/util/List;)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;)",
            "Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;"
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setSelectedDays(Ljava/util/List;)V

    return-object p0
.end method

.method public setSelectionColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setSelectionColor(I)V

    return-object p0
.end method

.method public setSelectionLabelColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setSelectionLabelColor(I)V

    return-object p0
.end method

.method public setTodayLabelColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mCalendarProperties:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->setTodayLabelColor(I)V

    return-object p0
.end method

.method public todayLabelColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    invoke-virtual {p0, p1}, Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;->setTodayLabelColor(I)Lcom/applandeo/materialcalendarview/builders/DatePickerBuilder;

    move-result-object p1

    return-object p1
.end method
