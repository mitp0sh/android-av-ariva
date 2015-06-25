.class final Lcom/avira/android/common/services/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/c/h;


# instance fields
.field final synthetic a:Lcom/avira/android/common/services/LocationService;


# direct methods
.method constructor <init>(Lcom/avira/android/common/services/LocationService;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/avira/android/common/services/a;->a:Lcom/avira/android/common/services/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 27
    invoke-static {}, Lcom/avira/android/common/web/d;->a()Lcom/avira/android/common/web/d;

    move-result-object v0

    const-string v5, ""

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/avira/android/common/web/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/avira/android/common/services/a;->a:Lcom/avira/android/common/services/LocationService;

    invoke-virtual {v0}, Lcom/avira/android/common/services/LocationService;->stopSelf()V

    .line 31
    return-void
.end method
