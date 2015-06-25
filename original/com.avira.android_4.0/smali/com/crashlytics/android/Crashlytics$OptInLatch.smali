.class Lcom/crashlytics/android/Crashlytics$OptInLatch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private send:Z

.field final synthetic this$0:Lcom/crashlytics/android/Crashlytics;


# direct methods
.method private constructor <init>(Lcom/crashlytics/android/Crashlytics;)V
    .locals 2

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$OptInLatch;->this$0:Lcom/crashlytics/android/Crashlytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crashlytics/android/Crashlytics$OptInLatch;->send:Z

    .line 1085
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics$OptInLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/crashlytics/android/Crashlytics;Lcom/crashlytics/android/Crashlytics$1;)V
    .locals 0

    .prologue
    .line 1083
    invoke-direct {p0, p1}, Lcom/crashlytics/android/Crashlytics$OptInLatch;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    return-void
.end method


# virtual methods
.method await()V
    .locals 1

    .prologue
    .line 1098
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$OptInLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getOptIn()Z
    .locals 1

    .prologue
    .line 1093
    iget-boolean v0, p0, Lcom/crashlytics/android/Crashlytics$OptInLatch;->send:Z

    return v0
.end method

.method setOptIn(Z)V
    .locals 1

    .prologue
    .line 1088
    iput-boolean p1, p0, Lcom/crashlytics/android/Crashlytics$OptInLatch;->send:Z

    .line 1089
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$OptInLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1090
    return-void
.end method
