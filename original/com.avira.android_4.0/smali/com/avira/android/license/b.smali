.class final Lcom/avira/android/license/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/license/a;


# direct methods
.method constructor <init>(Lcom/avira/android/license/a;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/avira/android/license/b;->a:Lcom/avira/android/license/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    .line 43
    return-void
.end method
