.class final Lcom/avira/android/antitheft/wipe/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/antitheft/wipe/a;


# direct methods
.method constructor <init>(Lcom/avira/android/antitheft/wipe/a;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/avira/android/antitheft/wipe/b;->a:Lcom/avira/android/antitheft/wipe/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a()Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->b()V

    .line 116
    return-void
.end method
