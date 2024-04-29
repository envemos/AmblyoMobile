.class public final synthetic Lcom/applandeo/materialcalendarview/utils/CalendarProperties$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/annimon/stream/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;


# direct methods
.method public synthetic constructor <init>(Lcom/applandeo/materialcalendarview/utils/CalendarProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties$$ExternalSyntheticLambda3;->f$0:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/utils/CalendarProperties$$ExternalSyntheticLambda3;->f$0:Lcom/applandeo/materialcalendarview/utils/CalendarProperties;

    check-cast p1, Lcom/applandeo/materialcalendarview/utils/SelectedDay;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/utils/CalendarProperties;->lambda$setSelectedDays$3$com-applandeo-materialcalendarview-utils-CalendarProperties(Lcom/applandeo/materialcalendarview/utils/SelectedDay;)Z

    move-result p1

    return p1
.end method
