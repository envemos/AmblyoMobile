.class public final synthetic Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;

.field public final synthetic f$1:Ljava/util/Calendar;


# direct methods
.method public synthetic constructor <init>(Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda5;->f$0:Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;

    iput-object p2, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda5;->f$1:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda5;->f$0:Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;

    iget-object v1, p0, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener$$ExternalSyntheticLambda5;->f$1:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/applandeo/materialcalendarview/listeners/DayRowClickListener;->lambda$onClick$3$com-applandeo-materialcalendarview-listeners-DayRowClickListener(Ljava/util/Calendar;)V

    return-void
.end method
