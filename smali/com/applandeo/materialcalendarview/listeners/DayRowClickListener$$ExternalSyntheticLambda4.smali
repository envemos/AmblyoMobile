.class public final synthetic Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/annimon/stream/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Calendar;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda4;->f$0:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda4;->f$0:Ljava/util/Calendar;

    check-cast p1, Lcom/applandeo/materialcalendarview/EventDay;

    invoke-static {v0, p1}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->lambda$onClick$2(Ljava/util/Calendar;Lcom/applandeo/materialcalendarview/EventDay;)Z

    move-result p1

    return p1
.end method
