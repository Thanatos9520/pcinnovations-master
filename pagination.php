<?php
function paginate($reload, $page, $tpages, $adjacents) {
	$prevlabel = "&lsaquo; Prev";
	$nextlabel = "Next &rsaquo;";
	$out = '<ul class="pagination pagination-large">';
	
	// previous label
 
	if($page==1) {
		$out.= "<li class='disabled'><span><a style='color:black;'>$prevlabel </a></span></li>";
	} else if($page==2) {
		$out.= "<li><span><a style='color:black;' href='javascript:void(0);' onclick='load(1)'>$prevlabel </a></span></li>";
	}else {
		$out.= "<li><span><a style='color:black;' href='javascript:void(0);' onclick='load(".($page-1).")'>$prevlabel </a></span></li>";
 
	}
	
	// first label
	if($page>($adjacents+1)) {
		$out.= "<li><a href='javascript:void(0);' onclick='load(1)'>1</a></li>";
	}
	// interval
	if($page>($adjacents+2)) {
		$out.= "<li><a>... </a></li>";
	}
	// pages
 
	$pmin = ($page>$adjacents) ? ($page-$adjacents) : 1;
	$pmax = ($page<($tpages-$adjacents)) ? ($page+$adjacents) : $tpages;
	for($i=$pmin; $i<=$pmax; $i++) {
		if($i==$page) {
			$out.= "<li class='active'><a style='color:black';>$i</a></li>";
		}else if($i==1) {
			$out.= "<li><a style='color:black;' href='javascript:void(0);' onclick='load(1)'>$i</a></li>";
		}else {
			$out.= "<li><a style='color:black;' href='javascript:void(0);' onclick='load(".$i.")'>$i</a></li>";
		}
	}
 
	// interval
 
	if($page<($tpages-$adjacents-1)) {
		$out.= "<li><a style='color:black;'>...</a></li>";
	}
 
	// last
 
	if($page<($tpages-$adjacents)) {
		$out.= "<li><a style='color:black;' href='javascript:void(0);' onclick='load($tpages)'>$tpages</a></li>";
	}
 
	// next
 
	if($page<$tpages) {
		$out.= "<li><span><a style='color:black;' href='javascript:void(0);' onclick='load(".($page+1).")'>$nextlabel </a></span></li>";
	}else {
		$out.= "<li class='disabled'><span><a style='color:black;'>$nextlabel </a></span></li>";
	}
	
	$out.= "</ul>";
	return $out;
}
?>