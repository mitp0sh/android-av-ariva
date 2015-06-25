.class final Lcom/avira/android/custom/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final APPLICATION_TERMINATION_ACTION:Ljava/lang/String; = "com.avira.android.action.APPLICATION_TERMINATION"


# instance fields
.field final synthetic a:Lcom/avira/android/custom/BaseFragmentActivity;


# direct methods
.method private constructor <init>(Lcom/avira/android/custom/BaseFragmentActivity;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/avira/android/custom/d;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/custom/BaseFragmentActivity;B)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/avira/android/custom/d;-><init>(Lcom/avira/android/custom/BaseFragmentActivity;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/avira/android/custom/d;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 45
    return-void
.end method
