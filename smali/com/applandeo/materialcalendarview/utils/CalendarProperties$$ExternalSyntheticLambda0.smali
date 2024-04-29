.class public final synthetic Lcom/applandeo/materialcalendarview/utils/CalendarProperties$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/annimon/stream/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/applandeo/materialcalendarview/utils/CalendarProperties$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties$$ExternalSyntheticLambda0;->INSTANCE:Lcom/applandeo/materialcalendarview/utils/CalendarProperties$$ExternalSyntheticLambda0;

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

    invoke-static {p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->lambda$setDisabledDays$0(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method
