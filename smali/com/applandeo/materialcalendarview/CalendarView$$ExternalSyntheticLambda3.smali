.class public final synthetic Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/annimon/stream/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda3;->INSTANCE:Lcom/applandeo/materialcalendarview/CalendarView$$ExternalSyntheticLambda3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Calendar;

    invoke-static {p1}, Lcom/applandeo/materialcalendarview/CalendarView;->lambda$getSelectedDates$2(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method
