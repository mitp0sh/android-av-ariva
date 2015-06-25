.class final Lcom/avira/android/utilities/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/utilities/y;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 59
    invoke-static {}, Lcom/avira/android/utilities/l;->b()V

    .line 60
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    invoke-static {}, Lcom/avira/android/utilities/l;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no server connectivity"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
