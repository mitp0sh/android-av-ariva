.class public final Lcom/avira/android/securebrowsing/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field public static final SESSION_NAME:Ljava/lang/String; = "session"

.field private static final THRESHOLD:I = 0x1388


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "session"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/securebrowsing/a/b;->b:Ljava/lang/String;

    .line 38
    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avira/android/securebrowsing/a/b;->a:J

    .line 40
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avira/android/securebrowsing/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 4

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/avira/android/securebrowsing/a/b;->a:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
