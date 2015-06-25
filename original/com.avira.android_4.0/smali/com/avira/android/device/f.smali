.class final Lcom/avira/android/device/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/c/h;


# instance fields
.field final synthetic a:Lcom/avira/android/device/e;


# direct methods
.method constructor <init>(Lcom/avira/android/device/e;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/avira/android/device/f;->a:Lcom/avira/android/device/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 78
    const-string v0, "NO LOCATOR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/avira/android/common/web/d;->a()Lcom/avira/android/common/web/d;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/avira/android/common/web/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method
