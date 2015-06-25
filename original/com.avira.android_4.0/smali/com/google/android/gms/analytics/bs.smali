.class final Lcom/google/android/gms/analytics/bs;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:J

.field private final c:J

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https:"

    iput-object v0, p0, Lcom/google/android/gms/analytics/bs;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/bs;->a:Ljava/lang/String;

    iput-wide p1, p0, Lcom/google/android/gms/analytics/bs;->b:J

    iput-wide p3, p0, Lcom/google/android/gms/analytics/bs;->c:J

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/bs;->a:Ljava/lang/String;

    return-object v0
.end method

.method final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/bs;->a:Ljava/lang/String;

    return-void
.end method

.method final b()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/bs;->b:J

    return-wide v0
.end method

.method final b(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http:"

    iput-object v0, p0, Lcom/google/android/gms/analytics/bs;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method final c()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/bs;->c:J

    return-wide v0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/bs;->d:Ljava/lang/String;

    return-object v0
.end method
