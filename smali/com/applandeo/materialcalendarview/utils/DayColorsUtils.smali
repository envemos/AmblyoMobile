.class public Lcom/applandeo/materialcalendarview/utils/DayColorsUtils;
.super Ljava/lang/Object;
.source "DayColorsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCurrentMonthDayColors(Ljava/util/Calendar;Ljava/util/Calendar;Landroid/widget/TextView;Lcom/applandeo/materialcalendarview/utils/CalendarProperties;)V
    .locals 0

    .line 66
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p3}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getTodayLabelColor()I

    move-result p0

    const/4 p1, 0x1

    sget p3, Lcom/applandeo/materialcalendarview/R$drawable;->background_transparent:I

    invoke-static {p2, p0, p1, p3}, Lcom/applandeo/materialcalendarview/utils/DayColorsUtils;->setDayColors(Landroid/widget/TextView;III)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p3}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getHighlightedDays()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 70
    invoke-virtual {p3}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getHighlightedDaysLabelsColor()I

    move-result p0

    sget p3, Lcom/applandeo/materialcalendarview/R$drawable;->background_transparent:I

    invoke-static {p2, p0, p1, p3}, Lcom/applandeo/materialcalendarview/utils/DayColorsUtils;->setDayColors(Landroid/widget/TextView;III)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p3}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getDaysLabelsColor()I

    move-result p0

    sget p3, Lcom/applandeo/materialcalendarview/R$drawable;->background_transparent:I

    invoke-static {p2, p0, p1, p3}, Lcom/applandeo/materialcalendarview/utils/DayColorsUtils;->setDayColors(Landroid/widget/TextView;III)V

    :goto_0
    return-void
.end method

.method public static setDayColors(Landroid/widget/TextView;III)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 33
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void
.end method

.method public static setSelectedDayColors(Landroid/widget/TextView;Lcom/applandeo/materialcalendarview/utils/CalendarProperties;)V
    .locals 3

    .line 46
    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getSelectionLabelColor()I

    move-result v0

    sget v1, Lcom/applandeo/materialcalendarview/R$drawable;->background_color_circle_selector:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/applandeo/materialcalendarview/utils/DayColorsUtils;->setDayColors(Landroid/widget/TextView;III)V

    .line 49
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->getSelectionColor()I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
