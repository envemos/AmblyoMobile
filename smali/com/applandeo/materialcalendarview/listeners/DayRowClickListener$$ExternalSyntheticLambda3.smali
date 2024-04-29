.class public final synthetic Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/annimon/stream/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda3;->f$0:Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda3;->f$0:Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->lambda$selectOneAndRange$0$com-applandeo-materialcalendarview-listeners-DayRowClickListener(Ljava/util/Calendar;)Z

    move-result p1

    return p1
.end method
