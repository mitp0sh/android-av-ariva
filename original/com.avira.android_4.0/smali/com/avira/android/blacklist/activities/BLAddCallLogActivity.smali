.class public Lcom/avira/android/blacklist/activities/BLAddCallLogActivity;
.super Lcom/avira/android/blacklist/activities/BLAddBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/avira/android/blacklist/activities/BLAddBaseActivity;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f08023c

    return v0
.end method

.method protected final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    new-instance v0, Lcom/avira/android/blacklist/activities/c;

    invoke-direct {v0, p0, v1}, Lcom/avira/android/blacklist/activities/c;-><init>(Lcom/avira/android/blacklist/activities/BLAddCallLogActivity;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/activities/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    return-void
.end method
