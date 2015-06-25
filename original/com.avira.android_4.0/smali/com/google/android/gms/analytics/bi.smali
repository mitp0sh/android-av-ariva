.class final Lcom/google/android/gms/analytics/bi;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/ba;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/bi;->a:Lcom/google/android/gms/analytics/ba;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/ba;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/bi;-><init>(Lcom/google/android/gms/analytics/ba;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/bi;->a:Lcom/google/android/gms/analytics/ba;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ba;->d(Lcom/google/android/gms/analytics/ba;)V

    return-void
.end method
