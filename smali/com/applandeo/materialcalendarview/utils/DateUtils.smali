.class public Lcom/applandeo/materialcalendarview/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# direct methods
.method public static synthetic $r8$lambda$yg-t7QYbqR4EX00xdpIk5XPRrz0(Ljava/util/Calendar;)J
    .locals 2

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCalendar()Ljava/util/Calendar;
    .locals 1

    .line 22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->setMidnight(Ljava/util/Calendar;)V

    return-object v0
.end method

.method private static getDaysBetweenDates(Ljava/util/Calendar;Ljava/util/Calendar;)J
    .locals 2

    .line 122
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    sub-long/2addr v0, p0

    .line 123
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getMonthAndYearDate(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/applandeo/materialcalendarview/R$array;->material_calendar_months_array:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    aget-object p0, p0, v0

    const/4 v0, 0x0

    aput-object p0, v1, v0

    const/4 p0, 0x1

    .line 98
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "%s  %s"

    .line 96
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMonthsBetweenDates(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 2

    const/4 v0, 0x1

    .line 109
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0xc

    const/4 v0, 0x2

    .line 110
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr v1, p0

    return v1
.end method

.method public static isFullDatesRange(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Calendar;",
            ">;)Z"
        }
    .end annotation

    .line 127
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 129
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {p0}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object p0

    sget-object v1, Lcom/applandeo/materialcalendarview/utils/DateUtils$$ExternalSyntheticLambda0;->INSTANCE:Lcom/applandeo/materialcalendarview/utils/DateUtils$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v1}, Lcom/annimon/stream/Stream;->sortBy(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;

    move-result-object p0

    invoke-virtual {p0}, Lcom/annimon/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    int-to-long v3, v0

    const/4 v1, 0x0

    .line 135
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Calendar;

    sub-int/2addr v0, v2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    invoke-static {v5, p0}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->getDaysBetweenDates(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    cmp-long p0, v3, v5

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :cond_2
    :goto_0
    return v2
.end method

.method public static isMonthAfter(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    .line 77
    invoke-static {p0}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->setMidnight(Ljava/util/Calendar;)V

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 78
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 79
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    .line 80
    invoke-static {p1}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->setMidnight(Ljava/util/Calendar;)V

    .line 81
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 83
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMonthBefore(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    .line 55
    invoke-static {p0}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->setMidnight(Ljava/util/Calendar;)V

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 56
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 57
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    .line 58
    invoke-static {p1}, Lcom/applandeo/materialcalendarview/utils/DateUtils;->setMidnight(Ljava/util/Calendar;)V

    .line 59
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 61
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setMidnight(Ljava/util/Calendar;)V
    .locals 2

    if-eqz p0, :cond_0

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 36
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 37
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 38
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    :cond_0
    return-void
.end method
