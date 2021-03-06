<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="side-menu">
            <li>
                <a href="{$smarty.server.SCRIPT_NAME}"><i class="fa fa-home fa-fw"></i> Home</a>
            </li>
            {if $smarty.session.AUTHENTICATED|default:"0" == 1}
            <li>
                <a href="{$smarty.server.SCRIPT_NAME}?page=dashboard"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
            </li>

            <li {if $smarty.get.page|default: "0" eq "account"}class="active" {/if}>
                <a href="#"><i class="fa fa-briefcase fa-fw"></i> My Account<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=edit"><i class="fa fa-edit fa-fw"></i> Edit Account</a></li>
                    <li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers"><i class="fa fa-wrench fa-fw"></i> My Workers</a></li>
                    <li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=transactions"><i class="fa fa-credit-card fa-fw"></i> Transactions</a></li>
                    {if !$GLOBAL.config.disable_transactionsummary}
                    <li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=earnings"><i class="fa fa-money fa-fw"></i> Earnings</a></li>{/if} {if !$GLOBAL.config.disable_notifications}
                    <li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=notifications"><i class="fa fa-bullhorn fa-fw"></i> Notifications</a></li>{/if} {if !$GLOBAL.config.disable_invitations}
                    <li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=invitations"><i class="fa fa-user-plus fa-fw"></i> Invitations</a></li>{/if} {if !$GLOBAL.acl.qrcode}
                    <li><a href="{$smarty.server.SCRIPT_NAME}?page=account&action=qrcode"><i class="fa fa-qrcode fa-fw"></i> QR Codes</a></li>{/if}
                </ul>
                <!-- /.nav-second-level -->
            </li>
            {/if} {if $smarty.session.AUTHENTICATED|default:"0" == 1 && $GLOBAL.userdata.is_admin == 1}
            <li {if $smarty.get.page|default: "0" eq "admin"}class="active" {/if}>
                <a href="#"><i class="fa fa-cogs fa-fw"></i> Admin Panel<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li {if $smarty.get.action|default: "0" eq "dashboard" || $smarty.get.action|default: "0" eq "monitoring" || $smarty.get.action|default: "0" eq "settings" || $smarty.get.action|default: "0" eq "setup"}class="active" {/if}>
                        <a href="#"><i class="fa fa-linux fa-fw"></i> System <span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=setup"><i class="fa fa-book fa-fw"></i> Setup</a></li>
                            <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=dashboard"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a></li>
                            <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=monitoring"><i class="fa fa-bell-o fa-fw"></i> Monitoring</a></li>
                            <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=settings"><i class="fa fa-cog fa-fw"></i> Settings</a></li>
                        </ul>
                    </li>
                    <li {if $smarty.get.action|default: "0" eq "wallet" || $smarty.get.action|default: "0" eq "transactions"}class="active" {/if}>
                        <a href="#"><i class="fa fa-usd fa-fw"></i> Funds <span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=wallet"><i class="fa fa-money fa-fw"></i> Wallet Info</a></li>
                            <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=transactions"><i class="fa fa-list-alt fa-fw"></i> Transactions</a></li>
                        </ul>
                    </li>
                    <li {if $smarty.get.action|default: "0" eq "news" || $smarty.get.action|default: "0" eq "newsletter"}class="active" {/if}>
                        <a href="#"><i class="fa fa-info fa-fw"></i> News <span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=news"><i class="fa fa-newspaper-o fa-fw"></i> Site News</a></li>
                            <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=newsletter"><i class="fa fa-file-text-o fa-fw"></i> Newsletter</a></li>
                        </ul>
                    </li>
                    <li {if $smarty.get.action|default: "0" eq "user" || $smarty.get.action|default: "0" eq "reports" || $smarty.get.action|default: "0" eq "registrations" || $smarty.get.action|default: "0" eq "invitations" || $smarty.get.action|default: "0" eq "poolworkers"}class="active" {/if}>
                        <a href="#"><i class="fa fa-users fa-fw"></i> Users <span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=user"><i class="fa fa-user fa-fw"></i> User Info</a></li>
                            <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=reports"><i class="fa fa-list-ol fa-fw"></i> Reports</a></li>
                            <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=registrations"><i class="fa fa-pencil-square-o fa-fw"></i> Registrations</a></li>
                            <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=invitations"><i class="fa fa-user-plus fa-fw"></i> Invitations</a></li>
                            <li><a href="{$smarty.server.SCRIPT_NAME}?page=admin&action=poolworkers"><i class="fa fa-wrench fa-fw"></i> Pool Workers</a></li>
                        </ul>
                    </li>
                </ul>
                <!-- /.nav-second-level -->
            </li>
            {/if} {if ($GLOBAL.acl.statistics.loggedin|default:"0" == 0 && ($smarty.session.AUTHENTICATED|default:"0" == 0 OR $smarty.session.AUTHENTICATED|default:"0" == 1)) OR ($GLOBAL.acl.statistics.loggedin|default:"0" == 1 && $smarty.session.AUTHENTICATED|default:"0" == 1)}
            <li {if $smarty.get.page|default: "0" eq "statistics"}class="active" {/if}>
                <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Statistics<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    {acl_check page='statistics' action='pool' name='<i class="fa fa-dot-circle-o fa-fw"></i> Pool' acl=$GLOBAL.acl.pool.statistics fallback='page=statistics'} {acl_check page='statistics' action='blocks' name='<i class="fa fa-cubes fa-fw"></i> Blocks' acl=$GLOBAL.acl.block.statistics} {acl_check page='statistics' action='round' name='<i class="fa fa-spinner fa-fw"></i> Round' acl=$GLOBAL.acl.round.statistics} {acl_check page='statistics' action='blockfinder' name='<i class="fa fa-search fa-fw"></i> Blockfinder' acl=$GLOBAL.acl.blockfinder.statistics} {acl_check page='statistics' action='uptime' name='<i class="fa fa-clock-o fa-fw"></i> Uptime' acl=$GLOBAL.acl.uptime.statistics} {acl_check page='statistics' action='graphs' name='<i class="fa fa-line-chart fa-fw"></i> Graphs' acl=$GLOBAL.acl.graphs.statistics} {acl_check page='statistics' action='donors' name='<i class="fa fa-bitbucket fa-fw"></i> Donors' acl=$GLOBAL.acl.donors.page}
                </ul>
                <!-- /.nav-second-level -->
            </li>
            {/if} {if ($GLOBAL.acl.help.loggedin|default:"0" == 0 && ($smarty.session.AUTHENTICATED|default:"0" == 0 OR $smarty.session.AUTHENTICATED|default:"0" == 1)) OR ($GLOBAL.acl.help.loggedin|default:"0" == 1 && $smarty.session.AUTHENTICATED|default:"0" == 1)}
            <li {if $smarty.get.page|default: "0" eq "gettingstarted" || $smarty.get.page|default: "0" eq "about"}class="active" {/if}>
                <a href="#"><i class="fa fa-question-circle fa-fw"></i> Help<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="{$smarty.server.SCRIPT_NAME}?page=gettingstarted"><i class="fa fa-info-circle fa-fw"></i> Getting Started</a></li>
                    {acl_check page='about' action='pool' name='<i class="fa fa-info fa-fw"></i> About' acl=$GLOBAL.acl.about.page}
                    <li><a href="{$smarty.server.SCRIPT_NAME}?page=tac"><i class="fa fa-book fa-fw"></i> Terms and Conditions</a></li>
                    <li><a href="http://support.thecoin.pw/"><i class="fa fa-ticket fa-fw"></i> Contact / Support</a></li>
                    {acl_check page='about' action='chat' name='<i class="fa fa-comments-o fa-fw"></i> Web Chat' acl=$GLOBAL.acl.chat.page}
                </ul>
                <!-- /.nav-second-level -->
            </li>
            {/if}
            <li {if $smarty.get.page|default: "0" eq "register" || $smarty.get.page|default: "0" eq "login" || $smarty.get.page|default: "0" eq "logout" || $smarty.get.page|default: "0" eq "tac" || $smarty.get.page|default: "0" eq "contactform"}class="active" {/if}>
                <a href="#"><i class="fa fa-asterisk fa-fw"></i> Other<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    {if $smarty.session.AUTHENTICATED|default:"0" == 1}
                    <li><a href="{$smarty.server.SCRIPT_NAME}?page=logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>
                    {else}
                    <li><a href="{$smarty.server.SCRIPT_NAME}?page=login"><i class="fa fa-sign-in fa-fw"></i> Login</a></li>
                    <li><a href="{$smarty.server.SCRIPT_NAME}?page=register"><i class="fa fa-pencil fa-fw"></i> Sign Up</a></li>
                    {/if} {acl_check page='contactform' action='' name='<i class="fa fa-envelope fa-fw"></i> Contact' acl=$GLOBAL.acl.contactform}
                </ul>
                <!-- /.nav-second-level -->
            </li>
            {if $GLOBAL.config.poolnav_enabled|default:"false"}
            <li>
                <a href="#"><i class="fa fa-play-circle-o fa-fw"></i> Mining Pools<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    {assign var="PoolArray" value="\n"|explode:$GLOBAL.config.poolnav_pools} {foreach from=$PoolArray item=pooldata} {assign var="PoolURL" value="|"|explode:$pooldata} {if $PoolURL|count > 1}
                    <li><a href="{$PoolURL[1]}"><i class="fa fa-angle-double-right fa-fw"></i> {$PoolURL[0]}</a></li>
                    {/if} {/foreach}
                </ul>
                <!-- /.nav-second-level -->
            </li>
            {else} {/if}
        </ul>
		<center>
            <br>
    			<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<!-- Navigation -->
				<ins class="adsbygoogle"
    				style="display:inline-block;width:200px;height:200px"
     				data-ad-client="ca-pub-1496645407031699"
     				data-ad-slot="2280928163"></ins>
				<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
        	<br>
    	</center>
        <!-- /#side-menu -->
    </div>
    <!-- /.sidebar-collapse -->
</nav>
<!-- /.navbar-static-side -->
